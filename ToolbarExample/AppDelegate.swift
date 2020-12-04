//
//  AppDelegate.swift
//  ToolbarExample
//
//  Created by Joel Saltzman on 12/2/20.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate, NSToolbarDelegate {

    @IBOutlet var window: NSWindow? 
    
    @IBOutlet var customView: NSView?


    func applicationDidFinishLaunching(_ aNotification: Notification) {
//        window?.toolbar?.items.last?.view = self.customView
        
//        [toolbar insertItemWithItemIdentifier:@"trackPlayerItem" atIndex:6];
        window?.toolbar?.insertItem(withItemIdentifier: NSToolbarItem.Identifier(rawValue: "custom"), at: 1)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    func toolbar(_ toolbar: NSToolbar, itemForItemIdentifier itemIdentifier: NSToolbarItem.Identifier, willBeInsertedIntoToolbar flag: Bool) -> NSToolbarItem? {
        if itemIdentifier.rawValue == "custom" {
            let item = NSToolbarItem.init(itemIdentifier: NSToolbarItem.Identifier(rawValue: "itemIdentifier"))
            item.view = customView
            return item
        }
        return nil
    }

}

