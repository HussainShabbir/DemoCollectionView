//
//  WindowController.swift
//  DemoCollectionView
//
//  Created by Hussain  on 8/3/16.
//  Copyright © 2016 Hussain . All rights reserved.
//

import Cocoa

class WindowController: NSWindowController {

//    var rootModel : PersonModel!
    override func windowDidLoad() {
        super.windowDidLoad()
        loadData()
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
    
    func loadData()
    {
        let childModel = PersonModel(name: "Peter", surname: "Parker", address: "123 Marina Ave", zipcode: "95051",isRoot: false, isParent: false, isChild: true )
        let childModel1 = PersonModel(name: "Tal", surname: "Elbow", address: "123 Halford Ave", zipcode: "95051",isRoot: false, isParent: false, isChild: true)
        let dataModel = PersonModel(name: "Man", surname: "", address: "", zipcode: "", isRoot: false, isParent: true, isChild: false)
        let rootModel = PersonModel(name: "Person Types", surname: "", address: "", zipcode: "", isRoot: true, isParent: false, isChild: false)
        dataModel.childList.append(childModel)
        dataModel.childList.append(childModel1)
        rootModel.childList.append(dataModel)
        self.contentViewController?.representedObject = rootModel
    }

}
