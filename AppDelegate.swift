//
//  AppDelegate.swift
//  CatWalkExtension
//
//  Created by İclal Çetin on 25.08.2024.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        if let debugWindow = NSApplication.shared.windows.first(where: { $0.title.contains("Debug") }) {
            let catWalkVC = CatWalkViewController()
            debugWindow.contentView?.addSubview(catWalkVC.view)
        }
    }
    

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }


}

