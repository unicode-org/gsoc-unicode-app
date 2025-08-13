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

clean: ## Cleans the project build artifacts.
	flutter clean
	cargo clean --manifest-path rust/Cargo.toml

setup: ## Installs dependencies and generates code.
	flutter pub get
	make cargo-build
	make generate

fresh: ## Runs `clean` and `setup` for a fresh setup.
	make clean
	make setup

cargo-build: ## Runs `cargo build --manifest-path rust/Cargo.toml`.
	cargo build --manifest-path rust/Cargo.toml

generate: ## Runs `flutter_rust_bridge_codegen generate`.
	flutter_rust_bridge_codegen generate

analyze: ## Runs `flutter analyze`.
	flutter analyze

format: ## Formats dart files.
	dart format .

test: ## Runs unit tests.
	flutter test