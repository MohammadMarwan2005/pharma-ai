# Pharma AI
**Point a camera at a medicine box → AI reads the name → drug data fetched → order ready. Zero typing.**

---

## The Problem
Pharmacy staff read medicine names off boxes, type them manually, look up the drug, then build the order. It's slow, repetitive, and breaks down at scale.

## What I Built
A Flutter app that replaces that entire loop. Scan packaging with the device camera, the backend AI model extracts the medicine name, fetches the drug data, and drops it straight into an editable order — ready to submit.

**Camera → AI extraction → drug lookup → order creation. One flow.**

---

## Why it's interesting

- **Real AI integration** — not a demo. Images go to a backend model, structured predictions come back, and the UI is built around handling those predictions gracefully (wrong guess? swap it from a dropdown. don't need it? swipe to delete.)
- **Designed for actual users** — pharmacy staff under time pressure, so the UX is built for speed: crop & confirm scanning, one-tap order submission, Arabic + English with full RTL support.
- **Production-shaped architecture** — BLoC/Cubit throughout, Retrofit-generated API layer, get_it DI, secure storage. Scales cleanly, easy to hand off.

---

## Core Flow
1. 📦 Scan one or more medicine boxes (crop & confirm)
2. 🤖 Backend model reads the name off the packaging
3. 💊 Drug data fetched and returned as order lines
4. ✅ Review predictions, fix any misses, set quantities
5. 🚀 Submit — order created in one tap

---

## Tech Stack

| Layer | Technology |
|---|---|
| Framework | Flutter (cross-platform) |
| State Management | BLoC/Cubit + Freezed |
| Navigation | go_router |
| Networking | Dio + Retrofit |
| Dependency Injection | get_it |
| Storage | shared_preferences, flutter_secure_storage |
| Scanning | Camera-based packaging scanner |
| Localization | Custom (English & Arabic / RTL) |

---

## Screenshots & Demo
<!-- Screenshot: Scanning Flow -->
<!-- Screenshot: AI Prediction Results -->
<!-- Video: End-to-End Flow -->

---

## Running Locally
```bash
flutter pub get
flutter run
```
> Set your backend URL in `lib/data/api/api_constants.dart`. The app calls three endpoints: AI prediction, medicine search, and order creation.