export async function onRequestGet(context) {
  const url = new URL(context.request.url);
  const app = url.searchParams.get('app');
  const lang = url.searchParams.get('lang');

  // Only serve if the secret param was present (validated client-side, but belt+suspenders)
  const token = url.searchParams.get('t');
  if (token !== '1') {
    return new Response(JSON.stringify({ error: 'not found' }), {
      status: 404,
      headers: { 'Content-Type': 'application/json' },
    });
  }

  let query = 'SELECT id, app, lang, title, body, author, rating FROM reviews';
  const params = [];

  if (app) {
    query += ' WHERE app = ?';
    params.push(app);
    if (lang) {
      query += ' AND lang = ?';
      params.push(lang);
    }
  } else if (lang) {
    query += ' WHERE lang = ?';
    params.push(lang);
  }

  query += ' ORDER BY RANDOM()';

  try {
    const { results } = await context.env.DB.prepare(query).bind(...params).all();
    return new Response(JSON.stringify({ reviews: results }), {
      headers: {
        'Content-Type': 'application/json',
        'Cache-Control': 'no-store',
      },
    });
  } catch (e) {
    return new Response(JSON.stringify({ error: e.message }), {
      status: 500,
      headers: { 'Content-Type': 'application/json' },
    });
  }
}
