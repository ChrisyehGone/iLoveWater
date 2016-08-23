//
//  MainWindow.swift
//  iLoveWater
//
//  Created by yexiaohui on 16/8/23.
//  Copyright © 2016年 yexiaohui. All rights reserved.
//

import Cocoa

class MainWindow: NSWindowController {
    
    override func windowDidLoad() {
        super.windowDidLoad()
        
        super.window?.backgroundColor = NSColor(calibratedRed: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        super.window?.titleVisibility = NSWindowTitleVisibility.Hidden; //透明的没有标题栏窗口；
        super.window?.titlebarAppearsTransparent = true
        super.window?.titleVisibility = .Hidden
        
        super.window?.styleMask = NSClosableWindowMask
            |   NSMiniaturizableWindowMask
            |   NSTitledWindowMask
            |   NSFullSizeContentViewWindowMask
    }
    
}
