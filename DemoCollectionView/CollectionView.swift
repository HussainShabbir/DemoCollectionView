//
//  CollectionView.swift
//  DemoCollectionView
//
//  Created by Hussain  on 11/3/16.
//  Copyright © 2016 Hussain . All rights reserved.
//

import Cocoa

class CollectionView: NSCollectionView {

    override func drawRect(dirtyRect: NSRect) {
        super.drawRect(dirtyRect)

        // Drawing code here.
    }
    override func newItemForRepresentedObject(object: AnyObject) -> NSCollectionViewItem {
        return super.newItemForRepresentedObject(object)
    }
}
