//
//  StatusBarItemController.swift
//  Switch Time Tracker
//
//  Created by Alexandru Rosianu on 11/04/2018.
//

import Cocoa

class StatusBarItemController: NSObject {
    
    @IBOutlet weak var popover: NSPopover!
    
    let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)

    override func awakeFromNib() {
        statusItem.button!.title = "S"
        statusItem.button!.action = #selector(togglePopover(_:))
        statusItem.button!.target = self
    }
    
    @objc func togglePopover(_ sender: NSStatusBarButton) {
        if popover.isShown {
            popover.performClose(sender)
        } else {
            popover.show(relativeTo: sender.bounds, of: sender, preferredEdge: .minY)
        }
    }

}
