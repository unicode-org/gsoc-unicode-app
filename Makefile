
help: ## This help dialog.
	@IFS=$$'\n' ; \
	help_lines=(`fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//'`); \
	for help_line in $${help_lines[@]}; do \
			IFS=$$'#' ; \
			help_split=($$help_line) ; \
			help_command=`echo $${help_split[0]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
			help_info=`echo $${help_split[2]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
			printf "%-30s %s\n" $$help_command $$help_info ; \
	done

codegen-watch:
	(dart run build_runner watch --delete-conflicting-outputs)

codegen-run:
	dart run build_runner build --delete-conflicting-outputs

clean: ## Cleans Flutter project.  dart run build_runner build --delete-conflicting-outputs
	rm -f pubspec.lock
	rm -f ios/Podfile.lock
	flutter clean
	flutter pub get
	cd ios && pod repo update && pod install && cd ..
	dart run build_runner build --delete-conflicting-outputs
	

analyze: ## Runs `flutter analyze`.
	flutter analyze

format: ## Formats dart files.
	dart format .

test: ## Runs unit tests.
	flutter test

appbundle: ## Builds appbundle
	flutter build appbundle

apk: ## Builds apk.
	flutter build apk
