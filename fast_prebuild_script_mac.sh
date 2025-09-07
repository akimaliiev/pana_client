#!/bin/bash
allDirs() {
    count=$(find . -name "pubspec.yaml" -exec dirname {} \; | wc -l)
    # shellcheck disable=SC2038
    find . -name "pubspec.yaml" -exec dirname {} \; | xargs -n 1 -P "$count" -I {} bash -c '
    (
      cd "{}" || exit
      echo -e "\033[1;32mRunning flutter clean and pub get in {}\033[0m"
      flutter clean
      flutter pub get
    )
  '
}

echo_styled() {
    echo -e "\033[1;$2m$1\033[0m"
}

flutter clean

allDirs

# Generate localization keys
echo_styled "Generating localization keys" 35
flutter gen-l10n

# Generate data layer files
(
    cd "data" || exit
    echo_styled "Generating data layer files in data" 33
    dart run build_runner build --delete-conflicting-outputs
)

# Generate domain layer files
(
    cd "domain" || exit
    echo_styled "Generating domain layer files in domain" 33
    dart run build_runner build --delete-conflicting-outputs
)

# Generate core_ui layer files
(
    cd "core_ui" || exit
    echo_styled "Generating core_ui layer files in core_ui" 33
    dart run build_runner build --delete-conflicting-outputs
)

# Generate feature layer files
(
    cd "features" || exit
    echo_styled "Processing feature modules in features/" 36

    find . -mindepth 2 -maxdepth 2 -name "pubspec.yaml" -exec dirname {} \; | while read -r module_dir; do
        (
            cd "$module_dir" || exit
            echo_styled "--> Entering module: $module_dir" 33

            echo_styled "    Running flutter pub get..." 32
            flutter pub get

            echo_styled "    Running build_runner..." 32
            dart run build_runner build --delete-conflicting-outputs
        )
    done
)

# Generate auto route files
(
    cd "navigation" || exit
    echo_styled "Generating auto route files in navigation" 33
    dart run build_runner build --delete-conflicting-outputs
)
