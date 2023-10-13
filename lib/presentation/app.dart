import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/configs/configs.dart';
import '../core/constants/constants.dart';
import 'common_blocs/app/app_bloc.dart';
import 'resource/styles/styles.dart';
import 'routing/routing.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
                builder: (context, child) {
                  final MediaQueryData data = MediaQuery.of(context);

                  return MediaQuery(
                    data: data.copyWith(textScaleFactor: 1.0),
                    child: child ?? const SizedBox.shrink(),
                  );
                },
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
