.PHONY: setup
setup: ## setup project
	fvm flutter pub get
	flutter pub global activate devtools

.PHONY: devtools
devtools: ## Serving DevTools
	fvm flutter pub global run devtools

.PHONY: dependencies
dependencies: ## update dependencies
	fvm flutter pub get

.PHONY: clean
clean: ## clear cache
	fvm flutter clean

.PHONY: analyze
analyze: ## run code analyzer
	fvm flutter analyze

.PHONY: format 
format: ## format code
	fvm flutter format lib/

.PHONY: format-analyze
format-analyze: ## run code analyzer && format code
	fvm flutter format --set-exit-if-changed --dry-run lib/
	fvm flutter analyze

.PHONY: generate
generate: ## update generated files
	fvm flutter pub run build_runner build --delete-conflicting-outputs

.PHONY: run-web
run-web: ## run web app
	fvm flutter run -d chrome --target lib/main.dart

.PHONY: run-desktop
run-desktop: ## run macos desktop
	fvm flutter run -d macos --target lib/main.dart

.PHONY: run-dev
run-dev: ## run app in debug mode with production flavor
	fvm flutter run --target lib/main.dart

.PHONY: run-prd
run-prd: ## run app in production mode
	fvm flutter run --release --target lib/main.dart

.PHONY: run-local
run-local: ## run app in debug mode with local flavor
	fvm flutter run --target lib/main_local.dart

.PHONY: build-android
build-android: ## build android release
	fvm flutter clean
	fvm flutter build apk --release --target lib/main.dart

.PHONY: build-appbundle
build-appbundle: ## build google play store app bundle
	fvm flutter clean
	fvm flutter build appbundle
	#flutter build appbundle --obfuscate --split-debug-info=/android

.PHONY: build-ios
build-ios: ## build ios release
	fvm flutter clean
	fvm flutter build ios

.PHONY: check-nullsafety
check-nullsafety: ## Check migration state dependency status
	fvm flutter pub outdated --mode=null-safety

.PHONY: unit-test
unit-test: ## run unit tests
	fvm flutter test test/all_tests.dart

.PHONY: mirror
mirror: ## mirror screen read-only (using scrcpy)
	scrcpy -n -m 1024 --window-title 'NGTV' 

.PHONY: record
record: ## record video (using scrcpy)
	scrcpy --record record.mp4

.PHONY: screenshot
screenshot: ## Capture screenshot
	adb exec-out screencap -p > ./screenshot.png

.PHONY: git-clean
git-clean: # Clean up git
	git clean -xffd

.DEFAULT_GOAL := help
.PHONY: help
help:
	@grep -E '(^[a-zA-Z_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'
