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
//        NSColor.lightGrayColor().setFill()
//        NSColor.colorWithCalibratedRed:150/255.0f green:150/255.0f blue:150/255.0f alpha:1.0]
//        var red : CGFloat = 0
//        var green : CGFloat = 0
//        var blue : CGFloat = 0
        NSColor(red: 0.96, green: 0.96, blue: 0.96, alpha: 1.0).setFill()
        NSRectFill(dirtyRect)

        // Drawing code here.
    }
    
    
    override func mouseDown(theEvent: NSEvent) {
        self.needsDisplay = true
        super.mouseDown(theEvent)
    }
//    extension NSColor{
//        private struct SharedColor{
//            static let completeItemColor = NSColor(red: 150/255, green: 150/255, blue: 150/255, alpha: 1.0)
//        }
//    }

}
