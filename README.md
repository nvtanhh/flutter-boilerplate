# Welcome aboard!

## Stack

- Architecture: Clean Architecture
- State Management: [BLoC](https://bloclibrary.dev/#/) + [hydrated_bloc](https://pub.dev/packages/hydrated_bloc)
- DI: [GetIt](https://pub.dev/packages/get_it) + [Injectable](https://pub.dev/packages/injectable)
- Data class: [Freezed](https://pub.dev/packages/freezed)
- Navigation: [GoRouter](https://pub.dev/packages/go_router)
- Rest API: [Dio](https://pub.dev/packages/dio)
- Storage: [Hive](https://pub.dev/packages/hive) + [Secure Storage](https://pub.dev/packages/flutter_secure_storage)
- Analytics: [Firebase](https://firebase.google.com/)
- Lints: [Flutter Lints](https://pub.dev/packages/flutter_lints) + [Dart code metrics](https://pub.dev/packages/dart_code_metrics)
- Code generation: [Build Runner](https://pub.dev/packages/build_runner) + [Freezed](https://pub.dev/packages/freezed) + [Json Serializable](https://pub.dev/packages/json_serializable) + [Injectable](https://pub.dev/packages/injectable)
- Testing: [Flutter Test](https://flutter.dev/docs/cookbook/testing/unit/introduction)
- Assets generation: [Flutter Gen](https://pub.dev/packages/flutter_gen) + [Flutter Launcher Icons](https://pub.dev/packages/flutter_launcher_icons) + [Flutter Native Splash](https://pub.dev/packages/flutter_native_splash)

## Structure

```bash
./lib
├── core
│   ├── configs
│   ├── constants
│   ├── exceptions
│   ├── extensions
│   ├── helpers
│   ├── mixins
│   └── utils
├── data
│   ├── datasources
│   │   └── providers
│   │       ├── api
│   │       └── storage
│   ├── mappers
│   │   ├── base
│   │   └── response_mapper
│   ├── models
│   └── repositories
├── domain
│   ├── entities
│   ├── repositories
│   └── usecases
├── l10n
└── presentation
    ├── base
    │   ├── bloc
    │   └── exception_handler
    ├── common_blocs
    │   ├── app
    │   └── overlay
    ├── common_widgets
    ├── features
    │   ├── auth
    │   └── ...
    ├── resource
    │   ├── gen
    │   └── styles
    ├── routing
    │   ├── observer
    │   └── router
    ├── shared_blocs
    └── utils
```
