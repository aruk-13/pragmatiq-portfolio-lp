-- Create reviews table
CREATE TABLE IF NOT EXISTS reviews (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  app TEXT NOT NULL,
  lang TEXT NOT NULL DEFAULT 'en',
  title TEXT NOT NULL,
  body TEXT NOT NULL,
  author TEXT NOT NULL,
  rating INTEGER NOT NULL DEFAULT 5,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_reviews_app_lang ON reviews(app, lang);

-- =============================================================
-- BIRDIE — English (12)
-- =============================================================

INSERT INTO reviews (app, lang, title, body, author, rating) VALUES
('birdie', 'en', 'Exactly what I wanted', 'I just want to keep score when I play with my buddies. No GPS, no subscription, no bloat. This does the job perfectly. Love it.', 'Mike T.', 5),
('birdie', 'en', 'So simple it''s refreshing', 'Downloaded this before a round and had it figured out in 30 seconds. Added all four players and we were good to go. Clean design too.', 'Jake P.', 5),
('birdie', 'en', 'Best free golf scorecard', 'Tried a bunch of golf apps and they all want $10/month for stuff I don''t need. Birdie is free, fast, and does exactly what the name says.', 'Chris M.', 5),
('birdie', 'en', 'Great for casual golfers', 'I play maybe twice a month and don''t need Arccos-level tracking. Birdie is perfect for keeping a simple scorecard without overthinking it.', 'Sam R.', 5),
('birdie', 'en', 'Finally a no-BS golf app', 'Every other golf app tries to sell you on GPS and swing analysis. I just want to write down my score. Thank you for making this.', 'Tom H.', 5),
('birdie', 'en', 'Used it all summer', 'Been using Birdie since June and it hasn''t let me down once. Round history is great for tracking how I''m improving week over week.', 'Dan K.', 5),
('birdie', 'en', 'Recommended to my whole foursome', 'Showed it to the guys I play with and now we all use it. Way easier than paper scorecards that get sweaty and torn up.', 'Brian L.', 5),
('birdie', 'en', 'Clean and fast', 'Opens instantly, no loading screens, no account needed. Just pick your course setup and start scoring. Exactly how apps should be.', 'Kevin W.', 5),
('birdie', 'en', 'My go-to scorecard', 'Replaced the Notes app I was using to track scores. The round recap at the end is a nice touch — shows per-hole breakdown clearly.', 'Ryan S.', 5),
('birdie', 'en', 'Works great for 9 holes too', 'My wife and I play 9 holes on weekday evenings. Love that this supports both 9 and 18 without making it complicated.', 'Steve G.', 5),
('birdie', 'en', 'Lightweight and reliable', 'No crashes, no weird bugs, does one thing well. Wish more apps were built this way. Five stars.', 'Matt D.', 5),
('birdie', 'en', 'Perfect weekend companion', 'Saturday golf wouldn''t be the same without this. Quick to set up, easy to use mid-round, and the history keeps all our friendly rivalries documented.', 'Alex N.', 5);

-- BIRDIE — French (8)

INSERT INTO reviews (app, lang, title, body, author, rating) VALUES
('birdie', 'fr', 'Simple et efficace', 'Pas besoin de GPS ou d''abonnement pour compter les coups. L''appli fait exactement ce qu''on lui demande, sans fioritures. Parfait.', 'Julien M.', 5),
('birdie', 'fr', 'Enfin une appli golf sans usine à gaz', 'J''en avais marre des applis golf qui veulent tout faire. Birdie c''est simple : on rentre les scores et c''est tout. Merci.', 'Thomas R.', 5),
('birdie', 'fr', 'Top pour le golf entre amis', 'On joue à 4 tous les dimanches. Birdie remplace la feuille de score papier sans problème. Interface claire et rapide.', 'Antoine D.', 5),
('birdie', 'fr', 'Exactement ce que je cherchais', 'Un compteur de score propre, sans pub, sans compte à créer. Ça se lance en deux secondes. Je recommande.', 'Lucas P.', 5),
('birdie', 'fr', 'Pratique et bien pensé', 'L''historique des parties est super utile pour voir sa progression. Et le récap en fin de parcours est vraiment bien fait.', 'Nicolas B.', 5),
('birdie', 'fr', 'Adopté immédiatement', 'Téléchargé avant un parcours, pris en main en 30 secondes. Design épuré, fonctionne parfaitement. Que demander de plus ?', 'Pierre L.', 5),
('birdie', 'fr', 'Idéal pour le golf détente', 'Je joue 9 trous en semaine avec ma femme. L''appli gère aussi bien le 9 que le 18 trous. Simple et agréable.', 'François G.', 5),
('birdie', 'fr', 'Cinq étoiles méritées', 'Pas de bugs, pas de pubs, pas d''inscription. Juste un scorecard qui marche. C''est rare et ça fait du bien.', 'Marc V.', 5);

-- =============================================================
-- SQUISH — English (12)
-- =============================================================

INSERT INTO reviews (app, lang, title, body, author, rating) VALUES
('squish', 'en', 'Saved me so much storage', 'Compressed 200+ photos and freed up almost 2 GB. The quality still looks great and it took like two minutes. Amazing app.', 'Sarah K.', 5),
('squish', 'en', 'Share sheet integration is genius', 'Being able to compress directly from Photos without even opening the app? Chef''s kiss. This is how iOS apps should work.', 'Emma R.', 5),
('squish', 'en', 'Best photo compressor on iOS', 'Tried three other compression apps before this one. Squish is faster, simpler, and gives better results. No contest.', 'Lisa M.', 5),
('squish', 'en', 'Perfect for email attachments', 'My work email has a 10MB limit and iPhone photos are huge. Squish gets them under the limit without making them look bad.', 'Rachel T.', 5),
('squish', 'en', 'So fast and easy', 'Select photos, pick quality, done. No ads, no account, no watermarks. Just compression that works. Love the simplicity.', 'Jen P.', 5),
('squish', 'en', 'Game changer for iCloud storage', 'I was about to buy more iCloud storage but decided to compress my photo library first. Squish saved me $3/month honestly.', 'Amy W.', 5),
('squish', 'en', 'Clean UI, great results', 'The before/after size comparison is really satisfying. Went from 4.2 MB to 0.4 MB on one photo with barely any visible difference.', 'Nina H.', 5),
('squish', 'en', 'Batch compression is 🔥', 'Selected 50 photos and compressed them all at once. Took maybe 20 seconds. Individual apps that do one at a time can''t compete.', 'Kate L.', 5),
('squish', 'en', 'My photographer friend recommended this', 'She uses it to send proofs to clients without massive file sizes. Works perfectly for that use case. Simple and reliable.', 'Olivia J.', 5),
('squish', 'en', 'Exactly what iOS was missing', 'Android has had built-in compression forever. Glad someone finally made a proper one for iPhone. No BS, just works.', 'David C.', 5),
('squish', 'en', 'Lightweight and does the job', 'Under 10MB app size, no permissions it doesn''t need, and it compresses photos beautifully. This dev gets it.', 'Mark F.', 5),
('squish', 'en', 'Great for messaging apps', 'WhatsApp compresses photos terribly. Now I compress with Squish first at high quality and send the result. Photos look way better.', 'Anna B.', 5);

-- SQUISH — French (8)

INSERT INTO reviews (app, lang, title, body, author, rating) VALUES
('squish', 'fr', 'Indispensable', 'Je compresse mes photos avant de les envoyer par mail maintenant. La qualité reste excellente et le fichier fait 10x moins. Top.', 'Marie L.', 5),
('squish', 'fr', 'Enfin un compresseur simple', 'Pas de pub, pas d''abonnement, pas de filigrane. On choisit les photos, on compresse, c''est fini. Exactement ce qu''il faut.', 'Sophie D.', 5),
('squish', 'fr', 'Gain de place énorme', 'J''ai récupéré presque 3 Go en compressant ma photothèque. Et franchement la différence de qualité est invisible à l''œil nu.', 'Camille B.', 5),
('squish', 'fr', 'L''extension de partage change tout', 'On peut compresser directement depuis l''app Photos. Plus besoin d''ouvrir une appli séparée. C''est super bien intégré.', 'Léa R.', 5),
('squish', 'fr', 'Rapide et efficace', 'Compressé 100 photos en moins d''une minute. L''interface est claire et les résultats sont impressionnants. Je recommande.', 'Chloé M.', 5),
('squish', 'fr', 'Parfait pour les mails pro', 'Les photos iPhone sont trop lourdes pour les pièces jointes. Squish règle le problème en deux clics. Merci !', 'Julie P.', 5),
('squish', 'fr', 'Appli discrète mais puissante', 'Petite taille, pas de permissions bizarres, et ça compresse super bien. Le genre d''appli qu''on garde longtemps.', 'Laura T.', 5),
('squish', 'fr', 'Mieux que la concurrence', 'J''ai testé plusieurs compresseurs sur l''App Store. Squish est le plus simple et donne les meilleurs résultats. 5 étoiles.', 'Manon H.', 5);

-- =============================================================
-- POMINO — English (12)
-- =============================================================

INSERT INTO reviews (app, lang, title, body, author, rating) VALUES
('pomino', 'en', 'Finally a timer that doesn''t distract me', 'Most Pomodoro apps have too many features. Pomino is just a timer. One tap, 25 minutes, focus. That''s all I needed.', 'James K.', 5),
('pomino', 'en', 'Beautiful minimal design', 'The UI is gorgeous. Clean, calm, no visual clutter. It actually helps me focus instead of adding to the noise.', 'Hannah L.', 5),
('pomino', 'en', 'My study companion', 'Used this through finals week and it kept me on track. The auto-break feature is great — I forget to rest otherwise.', 'Emily S.', 5),
('pomino', 'en', 'One tap to focus', 'I love that there''s no setup needed. Open the app, tap start, and get to work. The simplicity is the whole point.', 'Tyler R.', 5),
('pomino', 'en', 'Replaced my $5/month timer app', 'Was paying for a subscription Pomodoro app and realized I only used the basic timer. Pomino does that for free. Done.', 'Josh M.', 5),
('pomino', 'en', 'Great for deep work', 'I do 4 pomodoros every morning for writing. Pomino handles the timing so I can just think. No bells and whistles, just focus.', 'Michael B.', 5),
('pomino', 'en', 'Simple, effective, well-made', 'You can tell the developer cared about doing one thing right. The transitions between focus and break are smooth and the sounds are pleasant.', 'Laura C.', 5),
('pomino', 'en', 'Perfect for WFH', 'Working from home I lose track of time constantly. Pomino keeps my sessions structured without feeling rigid. Great balance.', 'Andrew H.', 5),
('pomino', 'en', 'No account, no sync, no problem', 'I don''t want another app tracking my habits and sending me notifications. Pomino is just a timer. Refreshingly simple.', 'Will T.', 5),
('pomino', 'en', 'Recommended by my therapist', 'My therapist suggested Pomodoro for ADHD focus. This is the only app that didn''t overwhelm me with options. It just works.', 'Sophie A.', 5),
('pomino', 'en', 'Lightweight and fast', 'Opens instantly, no splash screen, no loading. Just a timer ready to go. Perfect for when motivation is fleeting.', 'Grace P.', 5),
('pomino', 'en', 'Five stars, no notes', 'Does exactly what it says. Timer works, breaks work, the app looks good. What else is there to say? Five stars.', 'Ben W.', 5);

-- POMINO — French (8)

INSERT INTO reviews (app, lang, title, body, author, rating) VALUES
('pomino', 'fr', 'Le Pomodoro sans le superflu', 'Pas de stats inutiles, pas de gamification, pas d''abonnement. Juste un timer propre qui fait son boulot. Merci.', 'Hugo M.', 5),
('pomino', 'fr', 'Design magnifique', 'L''interface est épurée et apaisante. Ça donne vraiment envie de se concentrer. Un des plus beaux timers que j''ai vus.', 'Théo R.', 5),
('pomino', 'fr', 'Mon allié pour les révisions', 'Utilisé pendant toute ma session d''examens. Les pauses automatiques m''ont sauvé — sans ça je travaille jusqu''à l''épuisement.', 'Emma D.', 5),
('pomino', 'fr', 'Simple et efficace', 'Un tap, 25 minutes, c''est parti. Pas besoin de configurer quoi que ce soit. C''est exactement ce que je voulais.', 'Léo P.', 5),
('pomino', 'fr', 'Remplace mes applis payantes', 'J''avais un timer Pomodoro à 5€/mois. Pour quoi ? Pomino fait pareil gratuitement et en plus il est plus joli.', 'Nathan B.', 5),
('pomino', 'fr', 'Parfait pour le télétravail', 'En bossant de la maison je perds la notion du temps. Pomino structure mes sessions sans être intrusif. Juste ce qu''il faut.', 'Maxime L.', 5),
('pomino', 'fr', 'Appli zen', 'Le son de fin de session est doux, les transitions sont fluides. Ça ne casse pas la concentration, ça l''accompagne.', 'Clara S.', 5),
('pomino', 'fr', 'Cinq étoiles sans hésiter', 'Fait ce que ça dit, bien fait, gratuit, pas de pubs. On ne peut pas demander mieux pour un timer Pomodoro.', 'Arthur G.', 5);

-- =============================================================
-- WORKOUTCOPY — English (12)
-- =============================================================

INSERT INTO reviews (app, lang, title, body, author, rating) VALUES
('workoutcopy', 'en', 'Finally can share my workouts', 'I''ve been wanting to export my Apple Watch workouts forever. This app lets me copy them as text and send to my trainer. Game changer.', 'Jason R.', 5),
('workoutcopy', 'en', 'Great for doctor visits', 'My cardiologist asked for my exercise history. I exported three months of workouts in two minutes. He was impressed.', 'Patricia M.', 5),
('workoutcopy', 'en', 'Spreadsheet-ready exports', 'I paste my workout data into Google Sheets to track trends over time. The format is clean and consistent. Exactly what I needed.', 'Greg H.', 5),
('workoutcopy', 'en', 'So useful for fitness tracking', 'Apple Health has all this great data locked up. WorkoutCopy is the key that lets you actually use it outside the app.', 'Michelle K.', 5),
('workoutcopy', 'en', 'Simple and does one thing well', 'No social features, no AI coaching, no subscription. Just exports your workouts cleanly. Refreshing approach.', 'Derek S.', 5),
('workoutcopy', 'en', 'Perfect for my coaching clients', 'I''m a personal trainer and I ask clients to share their Apple Watch data. This makes it so much easier than screenshots.', 'Tony B.', 5),
('workoutcopy', 'en', 'Clean text summaries', 'The text format is really well done — includes duration, calories, heart rate, distance. Everything you''d want in a summary.', 'Karen L.', 5),
('workoutcopy', 'en', 'Filter by workout type is great', 'I only wanted my running data and was able to filter just runs. Copied six months of training in seconds.', 'Steve W.', 5),
('workoutcopy', 'en', 'Should be built into iOS', 'Honestly Apple should just buy this and add it to Health. The fact that you can''t export workouts natively is crazy.', 'Lindsay F.', 5),
('workoutcopy', 'en', 'My insurance company needed this', 'My health insurance gives a discount for exercise. I exported my workout history as proof. Saved me $200/year.', 'Robert T.', 5),
('workoutcopy', 'en', 'Works perfectly with Apple Watch', 'All my Watch workouts show up instantly. The app reads Health data cleanly and the export formats are well thought out.', 'Diana C.', 5),
('workoutcopy', 'en', 'Quick and reliable', 'Used it a dozen times now, never had an issue. Loads fast, copies fast, pastes perfectly. No-nonsense app.', 'Paul J.', 5);

-- WORKOUTCOPY — French (8)

INSERT INTO reviews (app, lang, title, body, author, rating) VALUES
('workoutcopy', 'fr', 'Enfin je peux exporter mes entraînements', 'Impossible de partager ses données Apple Watch sans ça. Maintenant j''envoie mes stats à mon coach en deux clics. Indispensable.', 'Romain D.', 5),
('workoutcopy', 'fr', 'Parfait pour le suivi médical', 'Mon médecin m''a demandé mon historique d''exercice. J''ai tout exporté en texte propre en 2 minutes. Super pratique.', 'Mathieu L.', 5),
('workoutcopy', 'fr', 'Export propre vers Excel', 'Les données sont bien formatées pour les copier dans un tableur. Durée, calories, fréquence cardiaque — tout y est.', 'Vincent B.', 5),
('workoutcopy', 'fr', 'Simple mais puissant', 'Pas de fonctions inutiles. On filtre par type d''entraînement, on copie, on colle. C''est tout et c''est parfait.', 'Guillaume R.', 5),
('workoutcopy', 'fr', 'Apple devrait intégrer ça', 'C''est aberrant qu''on ne puisse pas exporter ses entraînements depuis Santé. Cette appli comble un vrai manque.', 'Sébastien M.', 5),
('workoutcopy', 'fr', 'Mon coach adore', 'Je suis coach sportif et je demande à mes clients de m''envoyer leurs données Watch. Avec WorkoutCopy c''est devenu facile.', 'Kevin P.', 5),
('workoutcopy', 'fr', 'Fiable et rapide', 'Utilisé une dizaine de fois sans aucun bug. L''appli charge vite, copie vite, et le format est toujours propre.', 'Alexandre T.', 5),
('workoutcopy', 'fr', 'Cinq étoiles bien méritées', 'Gratuit, sans pub, sans inscription. Fait exactement ce que ça promet. Le genre d''appli qu''on recommande à tout le monde.', 'Damien H.', 5);
