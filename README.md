# Joel Montes de Oca — Resume & Portfolio

Welcome to my interactive resume and portfolio — a fast, modern single-page site built with Flutter Web.

---

## Live Demo

- Hosted on Netlify (static Flutter web site). See the deployed site for a responsive, animated presentation of projects, skills, and contact info.

---

## Highlights

- Clean, accessible design optimized for mobile and desktop
- Smooth animations and responsive layout using Flutter widgets
- Easy to extend: add projects, update sections, or swap themes

---

## Tech Stack

- Flutter (Dart) — UI, layout, animations
- Web build target for static hosting
- Netlify — hosting & CDN (recommended)

---

## Quick Start — Run Locally

1. Install Flutter (stable channel) and ensure `flutter` is on your `PATH`.
2. Fetch packages:

```bash
flutter pub get
```

3. Run the app in a browser for development:

```bash
flutter run -d chrome
```

4. Or build a production web bundle:

```bash
flutter build web --release
```

The production files will be in `build/web` and are ready to be served by any static host (Netlify, Vercel, GitHub Pages, etc.).

---

## Deploy to Netlify (recommended)

Option A — Netlify Git integration (preferred):

- Connect this repository via Netlify's **New site from Git**.
- Set **Build command** to `flutter build web --release` and **Publish directory** to `build/web`.
- Ensure Netlify installs Flutter in the build environment (use a Netlify build plugin for Flutter or add an install step in the build command). See `netlify.toml` for defaults.

Option B — Local deploy (quick):

```bash
flutter build web --release
npm install -g netlify-cli
netlify login
netlify deploy --dir=build/web --prod
```

---

## Customize

- Update content in `lib/presentation/pages/` to modify sections and projects.
- Add or replace images in `assets/images/` and reference them in the widgets.

---

## Contributing

Contributions are welcome — open an issue or a pull request for typos, content updates, or small UI improvements.

---

## Contact

- Email: joelmontesdeoca@proton.me
- GitHub: https://github.com/JoelMdO

---

Made with ❤️ using Flutter.
