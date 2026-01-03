# OwnBack

A community application that helps people find and return lost items to their owners in a simple, secure, and humane way.

## Getting Started

This project is a starting point for a Flutter application.

To get a local copy up and running, follow these simple steps.

### Prerequisites

Make sure you have Flutter installed. If not, please follow the official Flutter installation guide: [https://flutter.dev/docs/get-started/install](https://flutter.dev/docs/get-started/install)

### Installation

1.  Clone the repository:
    ```bash
    git clone https://github.com/your_username/ownback.git
    ```
2.  Navigate to the project directory:
    ```bash
    cd ownback
    ```
3.  Install dependencies:
    ```bash
    flutter pub get
    ```

### Running the App

To run the application on your connected device or emulator:

```bash
flutter run
```

For `flutter` related help, view the [online documentation](https://flutter.dev/docs/get-started/first-app).

---

# OwnBack — Development TODO

## Project Setup
- [✔️] Initialize Flutter project
- [✔️] Set app name: **OwnBack**
- [ ] Setup project structure (models, providers, screens, widgets, services)
- [ ] Configure theme (colors, typography)
- [✔️] Setup Git repository

---

## 🔐 Authentication (Login Feature)
> *Simple & safe authentication — no social pressure.*

- [ ] Login screen UI
- [ ] Register screen UI
- [ ] Input validation (email & password)
- [ ] Local auth logic (mock / local-first)
- [ ] Login state persistence
- [ ] Logout functionality
- [ ] Redirect flow (unauthenticated → login)

**Optional (future-ready):**
- [ ] Firebase Authentication integration
- [ ] Password reset flow

---

## Core Features — Lost & Found

### Item Model
- [ ] Create `ItemModel`
  - [ ] id
  - [ ] title
  - [ ] description
  - [ ] category
  - [ ] status (Lost / Found / Returned)
  - [ ] location (text-based)
  - [ ] date
  - [ ] contact info
  - [ ] image path
  - [ ] created by user

---

### Home & Listing
- [ ] Home screen layout
- [ ] Tabs: Lost | Found
- [ ] Item card widget
- [ ] Sort by latest
- [ ] Empty state UI

---

### Add Item
- [ ] Add item form UI
- [ ] Image picker integration
- [ ] Category selector
- [ ] Status selector (Lost / Found)
- [ ] Form validation
- [ ] Save item locally

---

### Item Detail
- [ ] Item detail screen
- [ ] Display image & full info
- [ ] Contact action button
- [ ] Mark as Returned
- [ ] Confirm dialog before status change

---

## Additional Features
- [ ] Bookmark item
- [ ] Search by keyword
- [ ] Filter by category
- [ ] Edit item
- [ ] Delete item (with confirmation)

---

## Data & State
- [ ] Provider setup
- [ ] Item provider (CRUD)
- [ ] Auth provider
- [ ] Local database setup (Hive)
- [ ] Persist user session
- [ ] Load data on app start

---

## UX & Polish
- [ ] Loading indicators
- [ ] Snackbar feedback
- [ ] Error handling
- [ ] Consistent spacing & typography
- [ ] Dark mode support (optional)

---

## Testing & Quality
- [ ] Manual testing (happy path)
- [ ] Edge case testing
- [ ] Fix UI overflow issues
- [ ] Fix state inconsistency

---

## Finalization
- [ ] App icon
- [ ] Splash screen
- [ ] Clean unused code
- [ ] Optimize performance
- [ ] Take app screenshots

---

## Documentation
- [ ] Write README
  - [✔️] App description
  - [ ] Features
  - [ ] Screenshots
  - [ ] Tech stack
- [ ] Add installation steps
- [ ] Add future roadmap

---

## Stretch Goals (Optional)
- [ ] Push notifications
- [ ] Location picker (map-based)
- [ ] Public community feed
- [ ] Backend integration

---

### Done Criteria
- App runs smoothly
- Core flow works end-to-end
- UI feels like a real product
- Code is clean & readable