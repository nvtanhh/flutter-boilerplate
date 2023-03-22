gen_code:
	# generate the generated code
	flutter pub run build_runner build --delete-conflicting-outputs

gen_splash:
	# generate splash screen
	flutter pub run flutter_native_splash:create --path=/yaml/splash.yaml

gen_icon_launcher:
	# generate app launcher icon
	flutter pub run flutter_launcher_icons -f /yaml/icon_launcher.yaml

preview_fix_linst:
	# preview proposed changes
	dart fix --dry-run

fix_linst:
	# apply proposed changes
	 dart fix --apply

format_code:
	# format the code
	dart format . -l 120

