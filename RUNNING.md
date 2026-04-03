# Running the App Locally

Short guide to run this Flutter project on macOS desktop, iOS Simulator, and a physical iPhone.

## Prerequisites
- Install Flutter SDK and add `flutter` to your PATH.
- Xcode (for iOS Simulator / real iPhone).
- Homebrew (optional, recommended): `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
- CocoaPods (for iOS native plugins): `brew install cocoapods`

Run `flutter doctor -v` to verify the environment and address any issues.

## Project root
All commands below assume you are in the project root:

```
cd /Users/joelmontesdeoca/Documents/MyPortfolio/My\ Porfolio\ Flutter/MyResume
```

## 1) Run on macOS desktop

Start the app on the macOS desktop target:

```
flutter run -d macos
```

To build a release macOS app:

```
flutter run --release -d macos
flutter build macos
```

## 2) Run on iOS Simulator

Open the Simulator app (if not already open):

```
open -a Simulator
```

List available Flutter devices and simulators:

```
flutter devices
```

Run on a specific Simulator (use the device id from `flutter devices`):

```
flutter run -d <deviceId>
```

Or let Flutter prompt you to select a device:

```
flutter run
```

## 3) Run on a Real iPhone (physical device)

Steps:

1. Connect iPhone via USB and unlock it. Tap "Trust" if prompted.
2. Ensure the device appears: `flutter devices`.
3. Open `ios/Runner.xcworkspace` in Xcode to set a valid signing team and provisioning profile (select the Runner target → Signing & Capabilities).
4. Install CocoaPods (if not already):

```
brew install cocoapods
cd ios
pod install --repo-update
cd ..
```

5. Run on the device:

```
flutter run -d <deviceId>
```

Notes:
- Building to a real device may require a paid Apple developer account for certain provisioning workflows.
- If you get Pod or iOS SDK errors, try updating the iOS platform in `ios/Podfile`, e.g. `platform :ios, '13.0'`, then run `pod install --repo-update`.

## Troubleshooting
- If `pod install` errors about Flutter pods requiring a higher deployment target, update `ios/Podfile` platform line and re-run `pod install`.
- If Android SDK issues appear (for Android dev), update Android SDK via Android Studio or `sdkmanager` and accept Android licenses: `flutter doctor --android-licenses`.
- If `flutter` command is not found, add Flutter to PATH (example):

```
echo 'export PATH="$PATH:$HOME/development/flutter/bin"' >> ~/.zshrc
source ~/.zshrc
```

## Helpful commands

```
flutter --version
flutter doctor -v
flutter pub get
flutter devices
flutter emulators
flutter run -d macos
flutter run -d <deviceId>
```

---
File created to help run the project locally. If you want, I can add quick VS Code launch tasks next.
