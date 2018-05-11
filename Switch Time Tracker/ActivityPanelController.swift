//
//  ActivityPanelController.swift
//  Switch Time Tracker
//
//  Created by Alexandru Rosianu on 11/04/2018.
//

import Cocoa

class ActivityPanelController: NSViewController {
    
    @IBOutlet weak var appDelegate: AppDelegate!
    
    var activityList = [Activity]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activityList = try! appDelegate.persistentContainer.viewContext.fetch(Activity.fetchRequest())
    }
    
    override func viewDidAppear() {
        super.viewDidAppear()
        NSApplication.shared.activate(ignoringOtherApps: true)
    }
    
    override func viewDidDisappear() {
        super.viewDidDisappear()
        NSApplication.shared.hide(nil)
    }
    
}

extension ActivityPanelController: NSTableViewDelegate {
    
//    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
//        let cell = tableView.makeView(withIdentifier: tableColumn!.identifier, owner: self) as! NSTableCellView
//        let activity = activityList[row]
//        let title = cell.subviews[0] as! NSTextField
//        title.stringValue = activity.name
//        return cell
//    }
    
}

extension ActivityPanelController: NSTableViewDataSource {
    
    func numberOfRows(in tableView: NSTableView) -> Int {
        return activityList.count
    }
    
    func tableView(_ tableView: NSTableView, objectValueFor tableColumn: NSTableColumn?, row: Int) -> Any? {
        return activityList[row]
    }
    
}
