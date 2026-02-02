# HebrewDateBar 📅

HebrewDateBar is a simple, lightweight macOS utility that lives in your menu bar. It provides the current Hebrew date at a glance, designed to be non-intrusive and strictly native.

## ✨ Features
- **Native Look:** Blends perfectly with the macOS menu bar.
- **Always Visible:** No need to open a separate app or calendar.
- **Privacy First:** No tracking, no internet connection required, and fully sandboxed (optional).
- **FOSS:** Free and Open Source Software under the MIT License.

## 🚀 Installation
1. Download [[Releases](../../releases) ](https://github.com/livelybride-faith/HebrewDateWidget/blob/main/HebrewDateWidget.app/Contents/MacOS/HebrewDateWidget) and run.

## 🛠 Build Instructions
If you want to build the app yourself:
1. Clone this repository.
2. Open `HebrewDateBar.xcodeproj` in Xcode 16+.
3. In **Signing & Capabilities**, ensure the "App Sandbox" is configured (or disabled if you prefer system-wide preference access).
4. Build and Run (`Cmd + R`).

## 📜 License
This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

## 🙏 Credits
- Icons generated using Apple's **SF Symbols**.
- Date logic powered by Apple's native `Foundation.Calendar` (Hebrew identifier).
