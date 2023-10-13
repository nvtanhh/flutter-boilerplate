gen_code:
	# generate the generated code
	flutter pub run build_runner build --delete-conflicting-outputs

gen_locale:
	# generate the locale
	flutter gen-l10n

gen_splash:
	# generate splash screen
	flutter pub run flutter_native_splash:create --path=/yaml/splash.yaml

gen_icon_launcher:
	# generate app launcher icon
	flutter pub run flutter_launcher_icons -f /yaml/icon_launcher.yaml

preview_fix:
	# preview proposed changes
	dart fix --dry-run

fix_lints:
	dart fix --apply

format_code:
	dart format . -l 120