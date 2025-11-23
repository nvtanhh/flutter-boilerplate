# 🚀 Flutter Boilerplate

A production-ready Flutter boilerplate project with Clean Architecture, featuring modern development practices and comprehensive tooling for building scalable mobile applications.

## 📋 Table of Contents

- [Features](#-features)
- [Tech Stack](#-tech-stack)
- [Project Structure](#-project-structure)
- [Getting Started](#-getting-started)
- [Development](#-development)
- [Architecture](#-architecture)
- [Code Generation](#-code-generation)
- [Testing](#-testing)
- [Contributing](#-contributing)

## ✨ Features

- 🏗️ **Clean Architecture** - Separation of concerns with clear boundaries
- 🔐 **Authentication Flow** - Complete sign in/sign up/forgot password implementation
- 🌐 **Multi-language Support** - i18n with Flutter localization
- 🎨 **Theming** - Light/Dark theme support with custom styling
- 📱 **Responsive Design** - Screen adaptation using flutter_screenutil
- 🔄 **State Management** - BLoC pattern with hydrated state persistence
- 💉 **Dependency Injection** - GetIt + Injectable for clean DI
- 🌐 **Network Layer** - REST API, GraphQL, and SignalR support
- 💾 **Local Storage** - Hive for preferences + Secure Storage for sensitive data
- 🔌 **Connectivity Check** - Network status monitoring
- 📊 **Logging** - Comprehensive logging system
- 🎯 **Navigation** - Type-safe routing with enhanced enum + GoRouter
- 🖼️ **Media Support** - Image caching, SVG, video player, WebView
- 🎬 **Animations** - Flutter Animate for smooth transitions
- 🧪 **Code Quality** - Linting with Flutter Lints + Dart Code Metrics
- 🔧 **Code Generation** - Freezed, JSON Serializable, Injectable

## 🛠 Tech Stack

### Core
- **Flutter SDK**: >=3.1.2 <4.0.0
- **Architecture**: Clean Architecture
- **State Management**: [BLoC](https://bloclibrary.dev/) + [hydrated_bloc](https://pub.dev/packages/hydrated_bloc)
- **Dependency Injection**: [GetIt](https://pub.dev/packages/get_it) + [Injectable](https://pub.dev/packages/injectable)

### Data & Networking
- **REST API**: [Dio](https://pub.dev/packages/dio) with custom interceptors
- **GraphQL**: [graphql_flutter](https://pub.dev/packages/graphql_flutter) + [gql_dio_link](https://pub.dev/packages/gql_dio_link)
- **Real-time**: [SignalR](https://pub.dev/packages/signalr_core)
- **Local Storage**: [Hive](https://pub.dev/packages/hive_flutter) + [flutter_secure_storage](https://pub.dev/packages/flutter_secure_storage)

### UI & UX
- **Navigation**: [GoRouter](https://pub.dev/packages/go_router)
- **Responsive Design**: [flutter_screenutil](https://pub.dev/packages/flutter_screenutil)
- **Images**: [cached_network_image](https://pub.dev/packages/cached_network_image)
- **Icons**: [flutter_svg](https://pub.dev/packages/flutter_svg)
- **Video**: [video_player](https://pub.dev/packages/video_player)
- **WebView**: [flutter_inappwebview](https://pub.dev/packages/flutter_inappwebview)
- **Animations**: [flutter_animate](https://pub.dev/packages/flutter_animate)
- **Rich Text**: [styled_text](https://pub.dev/packages/styled_text)

### Development Tools
- **Code Generation**: [build_runner](https://pub.dev/packages/build_runner), [freezed](https://pub.dev/packages/freezed), [json_serializable](https://pub.dev/packages/json_serializable)
- **Linting**: [flutter_lints](https://pub.dev/packages/flutter_lints) + [dart_code_metrics](https://pub.dev/packages/dart_code_metrics)
- **Assets**: [flutter_gen](https://pub.dev/packages/flutter_gen)
- **App Icon**: [flutter_launcher_icons](https://pub.dev/packages/flutter_launcher_icons)
- **Splash Screen**: [flutter_native_splash](https://pub.dev/packages/flutter_native_splash)

### Utilities
- **Environment Variables**: [flutter_dotenv](https://pub.dev/packages/flutter_dotenv)
- **Device Info**: [device_info_plus](https://pub.dev/packages/device_info_plus), [android_id](https://pub.dev/packages/android_id)
- **Connectivity**: [connectivity_plus](https://pub.dev/packages/connectivity_plus)
- **File Management**: [flutter_cache_manager](https://pub.dev/packages/flutter_cache_manager), [path_provider](https://pub.dev/packages/path_provider)
- **URL Launcher**: [url_launcher](https://pub.dev/packages/url_launcher)

## 📁 Project Structure

```bash
./lib
├── core                          # Core functionality and utilities
│   ├── configs                   # App configuration
│   │   ├── di/                   # Dependency injection setup
│   │   ├── routing/              # Routing configuration
│   │   ├── app_config.dart       # Main app configuration
│   │   ├── env_config.dart       # Environment configuration
│   │   ├── locale_config.dart    # Localization configuration
│   │   └── logging_config.dart   # Logging configuration
│   ├── constants                 # App-wide constants
│   │   ├── format/               # Format constants (date, number)
│   │   ├── ui/                   # UI constants (device, paging)
│   │   ├── api_constants.dart    # API endpoints and keys
│   │   ├── route_constants.dart  # Route paths
│   │   └── storage_constants.dart # Storage keys
│   ├── exceptions                # Custom exceptions
│   ├── extensions                # Dart extensions
│   │   ├── context_extensions.dart
│   │   ├── date_time_extensions.dart
│   │   ├── list_extensions.dart
│   │   ├── number_extensions.dart
│   │   ├── stream_extension.dart
│   │   ├── string_extensions.dart
│   │   ├── text_style_extensions.dart
│   │   └── widget_extensions.dart
│   ├── helpers                   # Helper classes
│   │   ├── debouncer.dart
│   │   └── stream/               # Stream utilities (disposable, dispose_bag)
│   ├── mixins                    # Reusable mixins
│   └── utils                     # Utility functions
│       ├── color_util.dart
│       ├── connectivity_util.dart
│       ├── date_time_util.dart
│       ├── device_util.dart
│       ├── file_util.dart
│       ├── intent_util.dart
│       ├── log_util.dart
│       ├── parse_util.dart
│       ├── platform_util.dart
│       ├── validation_util.dart
│       └── view_util.dart
├── data                          # Data layer
│   ├── datasources               # Data sources
│   │   ├── providers/
│   │   │   ├── api/              # API clients
│   │   │   │   ├── clients/
│   │   │   │   │   ├── base/     # Base API client setup
│   │   │   │   │   ├── socket/   # SignalR client
│   │   │   │   │   ├── authenticated_rest_api_client.dart
│   │   │   │   │   └── un_authenticated_rest_api_client.dart
│   │   │   │   ├── exception_mapper/  # API exception mapping
│   │   │   │   └── interceptor/       # Dio interceptors
│   │   │   │       ├── access_token_interceptor.dart
│   │   │   │       ├── connectivity_interceptor.dart
│   │   │   │       ├── log_interceptor.dart
│   │   │   │       ├── refresh_token_interceptor.dart
│   │   │   │       ├── retry_interceptor.dart
│   │   │   │       └── trim_interceptor.dart
│   │   │   └── storage/          # Storage providers
│   │   ├── app_preferences.dart  # Shared preferences wrapper
│   │   ├── auth_datasource.dart  # Authentication data source
│   │   └── refresh_token_datasource.dart
│   ├── mappers                   # Data to domain mappers
│   │   ├── base/
│   │   └── response_mapper/
│   ├── models                    # Data models (JSON serializable)
│   └── repositories              # Repository implementations
├── domain                        # Domain layer (business logic)
│   ├── entities                  # Domain entities
│   ├── repositories              # Repository interfaces
│   └── usecases                  # Use cases
│       ├── base/                 # Base use case classes
│       ├── auth/                 # Authentication use cases
│       │   ├── forgot_password_usecase.dart
│       │   ├── logout_usecase.dart
│       │   ├── sign_in_usecase.dart
│       │   └── sign_up_usecase.dart
│       └── user/                 # User use cases
├── l10n                          # Localization
│   ├── app_localizations.dart
│   ├── app_localizations_en.dart
│   └── intl_en.arb
└── presentation                  # Presentation layer
    ├── base                      # Base classes for presentation
    │   ├── bloc/                 # Base BLoC classes
    │   │   ├── common/           # Common BLoC implementation
    │   │   ├── app_bloc_observer.dart
    │   │   ├── base_bloc.dart
    │   │   ├── base_event.dart
    │   │   └── base_state.dart
    │   ├── exception_handler/    # Exception handling
    │   │   └── exception_message_mappers/
    │   ├── app_localizations_mixin.dart
    │   ├── app_theme_mixin.dart
    │   └── base_page_state.dart
    ├── common_blocs              # Shared BLoCs
    │   ├── app/                  # App-level BLoC (theme, locale, auth state)
    │   └── overlay/              # Overlay BLoC (loading, dialogs)
    ├── common_widgets            # Reusable widgets
    │   ├── app_icon.dart
    │   ├── button.dart
    │   ├── common_app_bar.dart
    │   ├── common_scaffold.dart
    │   ├── loading.dart
    │   ├── network_image.dart
    │   ├── tab_bar.dart
    │   ├── text_field.dart
    │   ├── toast.dart
    │   ├── user_avatar.dart
    │   ├── video_player.dart
    │   └── web_view.dart
    ├── features                  # Feature modules
    │   ├── auth/                 # Authentication feature
    │   │   ├── sign_in/
    │   │   │   ├── bloc/
    │   │   │   ├── sign_in_page.dart
    │   │   │   └── sign_in_widgets.dart
    │   │   ├── sign_up/
    │   │   │   ├── bloc/
    │   │   │   ├── sign_up_page.dart
    │   │   │   └── widgets/
    │   │   └── forgot_pass/
    │   │       ├── bloc/
    │   │       └── forgot_pass_page.dart
    │   └── home/                 # Home feature
    │       ├── home_page.dart
    │       └── shell_screen.dart
    ├── overlay                   # App overlays (loading, dialogs)
    │   └── overlay_wrapper.dart
    ├── resource                  # Resources (generated assets, styles)
    │   ├── gen/                  # Generated assets (flutter_gen)
    │   └── styles/               # Theme and styles
    └── routing                   # Navigation
        ├── app_page.dart         # Page definitions (enhanced enum)
        ├── app_router.dart       # Router configuration
        ├── navigation_helper.dart # Navigation utilities
        ├── navigator_observer.dart # Navigation logging
        ├── router_notifier.dart  # Auth state listener
        ├── _transitions.dart     # 11 page transitions
        └── all.dart              # Exports
```

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (>=3.1.2)
- Dart SDK
- Android Studio / Xcode (for mobile development)
- VS Code / Android Studio (recommended IDEs)

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd flutter_boilerplate
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Setup environment variables**
   
   Create an `.env` file in the `env/` directory:
   ```bash
   mkdir -p env
   touch env/.env
   ```
   
   Add your environment variables:
   ```env
   API_BASE_URL=https://your-api-url.com
   API_KEY=your-api-key
   # Add other environment variables
   ```

4. **Generate code**
   ```bash
   make gen_code
   ```

5. **Generate localization**
   ```bash
   make gen_locale
   ```

6. **Run the app**
   ```bash
   flutter run
   ```

## 💻 Development

### Available Make Commands

```bash
# Generate code (Freezed, JSON Serializable, Injectable)
make gen_code

# Generate localization files
make gen_locale

# Generate splash screen
make gen_splash

# Generate app launcher icon
make gen_icon_launcher

# Preview proposed lint fixes
make preview_fix

# Apply lint fixes
make fix_lints

# Format code
make format_code
```

### Code Generation

This project uses several code generation tools:

- **Freezed**: For immutable data classes
- **JSON Serializable**: For JSON serialization/deserialization
- **Injectable**: For dependency injection
- **Flutter Gen**: For type-safe asset references

Run code generation after:
- Adding new models
- Modifying existing models
- Adding new dependencies to DI
- Adding new assets

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

### Adding New Features

1. **Create domain layer**
   - Add entity in `lib/domain/entities/`
   - Add repository interface in `lib/domain/repositories/`
   - Add use case in `lib/domain/usecases/`

2. **Create data layer**
   - Add model in `lib/data/models/`
   - Add data source in `lib/data/datasources/`
   - Implement repository in `lib/data/repositories/`
   - Add mapper in `lib/data/mappers/`

3. **Create presentation layer**
   - Create feature folder in `lib/presentation/features/`
   - Add BLoC (events, states, bloc)
   - Add page and widgets
   - Add route (see [Adding New Routes](#adding-new-routes))

### Adding New Routes

This project uses **type-safe routing** with enhanced enum. Only 2 steps needed:

1. **Add page to enum** in `lib/presentation/routing/app_page.dart`:
   ```dart
   enum AppPage {
     // ... existing pages
     
     profile(
       path: '/profile',
       name: 'profile',
       requiresAuth: true,  // or false for public pages
       title: 'Profile',
       description: 'User profile page',  // optional
     );
   }
   ```

2. **Add route** in `lib/presentation/routing/app_router.dart`:
   ```dart
   GoRoute(
     path: AppPage.profile.path,
     name: AppPage.profile.name,
     pageBuilder: (context, state) => FadeTransitionPage(
       name: state.name!,
       child: const ProfilePage(),
     ),
   ),
   ```

**Navigate:**
```dart
// Direct navigation
AppPage.profile.go(context);

// Or use helper
context.currentPage  // Get current page
context.canPop      // Check if can go back
```

## 🏗 Architecture

This project follows **Clean Architecture** principles with three main layers:

### 1. Domain Layer (`lib/domain/`)
- **Entities**: Business objects
- **Repositories**: Abstract interfaces
- **Use Cases**: Business logic

### 2. Data Layer (`lib/data/`)
- **Models**: Data transfer objects
- **Data Sources**: API clients, local storage
- **Repositories**: Implementation of domain repositories
- **Mappers**: Convert models to entities

### 3. Presentation Layer (`lib/presentation/`)
- **BLoC**: State management
- **Pages**: UI screens
- **Widgets**: Reusable UI components

### Key Principles

- ✅ Dependency Rule: Inner layers don't depend on outer layers
- ✅ Separation of Concerns: Each layer has a specific responsibility
- ✅ Testability: Easy to test each layer independently
- ✅ Maintainability: Changes in one layer don't affect others

## 🔧 Configuration

### Theme Configuration

Customize themes in `lib/presentation/resource/styles/`:
- Light theme
- Dark theme
- Custom colors
- Typography

### Localization

Add new languages:
1. Create new `.arb` file in `lib/l10n/`
2. Run `make gen_locale`
3. Add locale to `LocaleConfig.supportedLocales`

### API Configuration

Configure API clients in `lib/data/datasources/providers/api/`:
- Base URL in environment variables
- Interceptors for auth, logging, retry
- Exception mapping

### Storage Configuration

Storage keys are defined in `lib/core/constants/storage_constants.dart`

## 🧪 Testing

```bash
# Run all tests
flutter test

# Run tests with coverage
flutter test --coverage

# Run specific test file
flutter test test/path/to/test_file.dart
```

### Test Structure

```
test/
├── unit/           # Unit tests
├── widget/         # Widget tests
└── integration/    # Integration tests
```

## 📱 Features Included

### Authentication
- ✅ Sign In
- ✅ Sign Up
- ✅ Forgot Password
- ✅ Token Management (Access + Refresh)
- ✅ Secure Storage for tokens

### Network Layer
- ✅ REST API client with Dio
- ✅ GraphQL client
- ✅ SignalR for real-time communication
- ✅ Automatic token refresh
- ✅ Request/Response logging
- ✅ Retry mechanism
- ✅ Connectivity check
- ✅ Error handling

### State Management
- ✅ BLoC pattern
- ✅ State persistence with HydratedBloc
- ✅ App-level state (theme, locale, auth)
- ✅ Feature-level BLoCs

### Routing & Navigation
- ✅ Type-safe routing with enhanced enum
- ✅ Authentication guards
- ✅ Auto redirect on login/logout
- ✅ 11 page transitions (Fade, Slide, Scale, etc.)
- ✅ Error pages (404, 401, 403, 500)
- ✅ Navigation helpers
- ✅ Deep linking ready

### UI Components
- ✅ Custom buttons
- ✅ Text fields with validation
- ✅ Loading indicators
- ✅ Toast notifications
- ✅ App bar
- ✅ Network images with caching
- ✅ Video player
- ✅ WebView
- ✅ User avatar
- ✅ Error pages

### Utilities
- ✅ Form validation
- ✅ Date/Time formatting
- ✅ Color utilities
- ✅ Device information
- ✅ File management
- ✅ Intent launcher
- ✅ Logging system

## 🎨 Customization

### Fonts

Two font families are included:
- **Montserrat**: Regular, Medium, SemiBold, Bold
- **OpenSans**: Regular, Medium, SemiBold, Bold

Add new fonts in `pubspec.yaml` and place font files in `assets/fonts/`

### App Icon & Splash Screen

1. **Update app icon**:
   - Edit `yaml/icon_launcher.yaml`
   - Run `make gen_icon_launcher`

2. **Update splash screen**:
   - Edit `yaml/splash.yaml`
   - Run `make gen_splash`

## 📦 Dependencies Management

### Adding New Dependencies

1. Add to `pubspec.yaml`
2. Run `flutter pub get`
3. If it requires code generation, run `make gen_code`

### Updating Dependencies

```bash
flutter pub upgrade
```

## 🔒 Security

- ✅ Secure storage for sensitive data (tokens, credentials)
- ✅ API key protection via environment variables
- ✅ Certificate pinning ready
- ✅ Input validation
- ✅ Error message sanitization

## 📝 Code Style

This project follows:
- [Flutter Style Guide](https://flutter.dev/docs/development/tools/formatting)
- [Effective Dart](https://dart.dev/guides/language/effective-dart)
- Custom lint rules in `analysis_options.yaml`

### Linting

```bash
# Analyze code
flutter analyze

# Fix lint issues
make fix_lints

# Format code
make format_code
```

## 🤝 Contributing

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

### Commit Convention

Follow [Conventional Commits](https://www.conventionalcommits.org/):
- `feat:` New feature
- `fix:` Bug fix
- `docs:` Documentation changes
- `style:` Code style changes (formatting)
- `refactor:` Code refactoring
- `test:` Adding tests
- `chore:` Maintenance tasks

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🙏 Acknowledgments

- [Flutter](https://flutter.dev/)
- [BLoC Library](https://bloclibrary.dev/)
- [GetIt](https://pub.dev/packages/get_it)
- [Freezed](https://pub.dev/packages/freezed)
- All other amazing packages used in this project

## 📧 Contact

For questions or support, please open an issue in the repository.

---

**Happy Coding! 🚀**
