# deerholdlearn
# developer:Sabin Simkhada


A new Flutter project.

## Getting Started
This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Build

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

## Running

```bash
flutter run ios --flavor sit --target lib/main_sit.dart
```

VS Code to use Debug - `Run as Deerhold Learn (SIT)`

### Firebase

Create Firebase project in three platform (Development,Staging and Production) For IOS And Android.

Node version Check latest updaate of node is required.

Integration is done using `flutterfire`

```bash
flutterfire configure \
  --out=lib/firebase/firebase_sit.dart \
  --ios-bundle-id=com.instride.health.sit \
  --android-app-id=com.instride.health.sit

  flutterfire configure \
  --out=lib/firebase/firebase_uat.dart \
  --ios-bundle-id=com.instride.health.uat \
  --android-app-id=com.instride.health.uat

    flutterfire configure \
  --out=lib/firebase/firebase_prd.dart \
  --ios-bundle-id=com.instride.health \
  --android-app-id=com.instride.health

  