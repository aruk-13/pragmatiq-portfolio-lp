const CORS = {
  'Content-Type': 'application/json',
  'Cache-Control': 'no-store',
};

function guard(request) {
  const url = new URL(request.url);
  if (url.searchParams.get('t') !== '1') {
    return new Response(JSON.stringify({ error: 'not found' }), { status: 404, headers: CORS });
  }
  return null;
}

// GET /api/reviews?app=squish&lang=en&t=1
export async function onRequestGet(context) {
  const blocked = guard(context.request);
  if (blocked) return blocked;

  const url = new URL(context.request.url);
  const app = url.searchParams.get('app');
  const lang = url.searchParams.get('lang');

  let query = 'SELECT id, app, lang, title, body, author, rating FROM reviews WHERE used = 0';
  const params = [];

  if (app) {
    query += ' AND app = ?';
    params.push(app);
  }
  if (lang) {
    query += ' AND lang = ?';
    params.push(lang);
  }

  query += ' ORDER BY RANDOM()';

  try {
    const { results } = await context.env.DB.prepare(query).bind(...params).all();
    return new Response(JSON.stringify({ reviews: results }), { headers: CORS });
  } catch (e) {
    return new Response(JSON.stringify({ error: e.message }), { status: 500, headers: CORS });
  }
}

// POST /api/reviews?t=1  body: { id: 42 }
export async function onRequestPost(context) {
  const blocked = guard(context.request);
  if (blocked) return blocked;

  try {
    const { id } = await context.request.json();
    if (!id) {
      return new Response(JSON.stringify({ error: 'missing id' }), { status: 400, headers: CORS });
    }
    await context.env.DB.prepare('UPDATE reviews SET used = 1 WHERE id = ?').bind(id).run();
    return new Response(JSON.stringify({ ok: true }), { headers: CORS });
  } catch (e) {
    return new Response(JSON.stringify({ error: e.message }), { status: 500, headers: CORS });
  }
}
