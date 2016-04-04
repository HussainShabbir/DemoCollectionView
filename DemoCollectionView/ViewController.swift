//
//  ViewController.swift
//  DemoCollectionView
//
//  Created by Hussain  on 8/3/16.
//  Copyright © 2016 Hussain . All rights reserved.
//


import Cocoa

class ViewController: NSViewController {
    @IBOutlet weak var sourceListView : NSOutlineView!
    @IBOutlet weak var collectionView : NSCollectionView!
    var sourceListArray = [AnyObject]()
    var tableListArray = [AnyObject]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.itemPrototype = self.storyboard?.instantiateControllerWithIdentifier("collectionViewItem") as? NSCollectionViewItem
        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.

            self.willChangeValueForKey("sourceListArray")
            self.sourceListArray.append(representedObject!)
            self.didChangeValueForKey("sourceListArray")
            self.sourceListView.expandItem(nil, expandChildren: true)
            self.sourceListView.selectRowIndexes(NSIndexSet(index: 1), byExtendingSelection: true)
        }
        
    }
    
    func outlineView(outlineView: NSOutlineView, isGroupItem item: AnyObject) -> Bool
    {
        let model = item.representedObject as! PersonModel
        var shouldDisplayGroupButton  = false
        if model.isRoot == true{
            shouldDisplayGroupButton = true
        }
        return shouldDisplayGroupButton
    }
    
    func outlineView(outlineView: NSOutlineView, shouldExpandItem item: AnyObject) -> Bool{
        return true
    }
    
    func outlineView(outlineView: NSOutlineView, shouldShowOutlineCellForItem item: AnyObject) -> Bool{
        let model = item.representedObject as! PersonModel
        var shouldShowOutlineCell  = false
        if model.isRoot == true || model.isParent == true
        {
            shouldShowOutlineCell = true
        }
        return shouldShowOutlineCell
    }
    func outlineView(outlineView: NSOutlineView, shouldShowCellExpansionForTableColumn tableColumn: NSTableColumn?, item: AnyObject) -> Bool
    {
        return true
    }
    
    func outlineView(outlineView: NSOutlineView, viewForTableColumn tableColumn: NSTableColumn?, item: AnyObject) -> NSView?{
        let model = item.representedObject as! PersonModel
        var tableViewCell: NSTableCellView?
        if model.isRoot == true{
            tableViewCell = outlineView.makeViewWithIdentifier("HeaderCell", owner: self) as? NSTableCellView
        }
        else if model.isParent == true{
            tableViewCell = outlineView.makeViewWithIdentifier("DataCell", owner: self) as? NSTableCellView
        }
        else if model.isChild == true{
            tableViewCell = outlineView.makeViewWithIdentifier("ChildCell", owner: self) as? NSTableCellView
        }
        return tableViewCell
    }
    
    func outlineViewSelectionDidChange(notification: NSNotification)
    {
        let outlineView = notification.object as! NSOutlineView
        let row = outlineView.selectedRow
        if (row == -1){
            return
        }
        let item = self.sourceListView.itemAtRow(row)?.representedObject as! PersonModel
        if item.name == "Man"{
            self.willChangeValueForKey("tableListArray")
            self.tableListArray = []
            if item.childList.count == 1
            {
                self.tableListArray.append(item.childList[0])
            }
            else if item.childList.count > 1
            {
                self.tableListArray = item.childList
            }
            self.didChangeValueForKey("tableListArray")
        }
    }
}

