//
//  CustomView.swift
//  DemoCollectionView
//
//  Created by Hussain  on 14/3/16.
//  Copyright © 2016 Hussain . All rights reserved.
//

import Cocoa

class CustomView: NSView {
    let isSelected : Bool = false
    override func drawRect(dirtyRect: NSRect) {
        super.drawRect(dirtyRect)
        NSColor(red: 0.96, green: 0.96, blue: 0.96, alpha: 1.0).setFill()
        NSRectFill(dirtyRect)

        // Drawing code here.
    }
    
    
    override func mouseDown(theEvent: NSEvent) {
        self.needsDisplay = true
        super.mouseDown(theEvent)
    }
}
