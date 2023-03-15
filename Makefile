generate:
	# generate the generated code
	flutter pub run build_runner build --delete-conflicting-outputs

preview_fix_linst:
	# preview proposed changes
	dart fix --dry-run

fix_linst:
	# apply proposed changes
	 dart fix --apply

format_code:
	# format the code
	flutter format .