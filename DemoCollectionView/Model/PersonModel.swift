//
//  PersonModel.swift
//  DemoCollectionView
//
//  Created by Hussain  on 8/3/16.
//  Copyright © 2016 Hussain . All rights reserved.
//

import Cocoa

class PersonModel: NSObject {
    let name : String?
    let surname : String?
    let address : String?
    let zipcode : String?
    let isRoot : Bool?
    let isParent : Bool?
    let isChild : Bool?
    var childList = [AnyObject]()
    init(name : String, surname : String, address : String, zipcode : String, isRoot : Bool, isParent : Bool, isChild : Bool)
    {
        self.name = name
        self.surname = surname
        self.address = address
        self.zipcode = zipcode
        self.isRoot = isRoot
        self.isParent = isParent
        self.isChild = isChild
    }
}
