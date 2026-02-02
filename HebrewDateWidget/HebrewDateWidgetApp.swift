import SwiftUI

@main
struct HebrewDateWidgetApp: App {
    // Connect the AppDelegate
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        // This prevents a window from opening at launch
        Settings { EmptyView() }
    }
}

class AppDelegate: NSObject, NSApplicationDelegate {
    var statusItem: NSStatusItem!

    func applicationDidFinishLaunching(_ notification: Notification) {
        // 1. Create the Status Item in the system menu bar
        statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
        
        if let button = statusItem.button {
            // 2. Set the Hebrew Date as the title
            button.title = getHebrewDate()
            
            // 3. Optional: Add a small menu so you can quit the app
            let menu = NSMenu()
            menu.addItem(NSMenuItem(title: "Quit", action: #selector(NSApplication.terminate(_:)), keyEquivalent: "q"))
            statusItem.menu = menu
        }
    }

    func getHebrewDate() -> String {
        let formatter = DateFormatter()
        formatter.calendar = Calendar(identifier: .hebrew)
        // Use .medium for a shorter menu bar look (e.g., "15 Shevat 5786")
        formatter.dateStyle = .medium
        formatter.locale = Locale(identifier: "en_US")
        return formatter.string(from: Date())
    }
}
