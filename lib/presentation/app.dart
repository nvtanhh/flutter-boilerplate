import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/configs/all.dart';
import '../core/constants/all.dart';
import '../core/extensions/all.dart';
import '../l10n/app_localizations.dart';
import 'common_blocs/app/app_bloc.dart';
import 'overlay/overlay_wrapper.dart';
import 'resource/styles/styles.dart';
import 'routing/routing.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(
        DeviceConstants.designDeviceWidth,
        DeviceConstants.designDeviceHeight,
      ),
      builder: (context, _) {
        return BlocProvider(
          create: (_) => AppBloc()..add(const AppInitiated()),
          child: BlocBuilder<AppBloc, AppState>(
            builder: (context, state) {
              return MaterialApp.router(
                builder: (context, child) => _RootApp(child: child!),
                routerConfig: state.isLoggedIn ? AppRouter.authenticatedRoute : AppRouter.unAuthRouter,
                themeMode: state.isDarkTheme ? ThemeMode.dark : ThemeMode.light,
                theme: lightTheme,
                darkTheme: darkTheme,
                debugShowCheckedModeBanner: false,
                locale: Locale(state.locale),
                supportedLocales: LocaleConfig.supportedLocales,
                localeResolutionCallback: (Locale? locale, Iterable<Locale> supportedLocales) =>
                    supportedLocales.contains(locale) ? locale : const Locale(LocaleConfig.defaultLocale),
                localizationsDelegates: const [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
              );
            },
          ),
        );
      },
    );
  }
}

class _RootApp extends StatefulWidget {
  const _RootApp({
    required this.child,
  });

  final Widget child;

  @override
  State<_RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<_RootApp> {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData data = MediaQuery.of(context);

    return MediaQuery(
      data: data.copyWith(),
      child: ScrollConfiguration(
        behavior: const ScrollBehavior().copyWith(
          physics: const ClampingScrollPhysics(),
        ),
        child: DefaultTextStyle(
          style: context.textTheme.bodyMedium!,
          child: AppOverlayWrapper(
            child: widget.child,
          ),
        ),
      ),
    );
  }
}
