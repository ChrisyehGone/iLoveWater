//
//  YesterdayViewController.swift
//  iLoveWater
//
//  Created by yexiaohui on 16/8/23.
//  Copyright © 2016年 yexiaohui. All rights reserved.
//

import Cocoa

extension NSStoryboard {
    private class func mainStoryboard()-> NSStoryboard {
        return NSStoryboard(name: "Main", bundle: NSBundle.mainBundle())
    }
    private class func yesterdayStoryboard()-> NSStoryboard {
        return NSStoryboard(name: "Yesterday", bundle: NSBundle.mainBundle())
    }
    class func viewController()->ViewController {
        return self.mainStoryboard().instantiateControllerWithIdentifier("ViewController") as! ViewController
    }
    class func yesterdayController()->YesterdayController {
        return self.yesterdayStoryboard().instantiateControllerWithIdentifier("YesterdayViewController") as! YesterdayController;
    }
}
class MainWindowController : NSWindowController, YesterdayDelegate, TodayDelegate, NSAnimationDelegate{
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
        
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
        let viewController = NSStoryboard.viewController()
        viewController.delegate = self
        self.contentViewController = viewController
        
        
        
    }
    func onSwitchToYesterday () {
        let yesterdayController = NSStoryboard.yesterdayController()
        yesterdayController.delegate = self
        self.contentViewController = yesterdayController
    }
    
    func onSwitchToToday() {
        let animation = NSAnimation(duration: 5, animationCurve: .EaseIn)
        animation.delegate = self
        animation.progressMarks = 
        
        
                let viewController = NSStoryboard.viewController()
                viewController.delegate = self
                self.contentViewController = viewController
        
    }

}
