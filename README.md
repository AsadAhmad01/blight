# FreshLens

Cross-platform Flutter app that classifies food freshness using on-device TFLite ML.

## Tech Stack
- Flutter 3.x · Dart 3
- flutter_bloc (BLoC + Cubit)
- tflite_flutter (on-device inference)
- Drift ORM (local history)
- Dio + Retrofit (cloud fallback)
- Clean Architecture (Data / Domain / Presentation)
- get_it + injectable (DI)
- go_router (navigation)

## Getting Started
1. `flutter pub get`
2. `dart run build_runner build --delete-conflicting-outputs`
3. Place `freshlens.tflite` in `assets/models/`
4. `flutter run`

## Architecture
[Clean Architecture diagram here]

## Screenshots
[Add screenshots after first run]
