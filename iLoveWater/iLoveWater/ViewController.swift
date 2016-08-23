//
//  ViewController.swift
//  iLoveWater
//
//  Created by yexiaohui on 16/8/23.
//  Copyright © 2016年 yexiaohui. All rights reserved.
//

import Cocoa
protocol YesterdayDelegate {
    func onSwitchToYesterday()
}
class ViewController: NSViewController {
    var delegate : YesterdayDelegate?

    @IBOutlet weak var backView: NSView!
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.backView.wantsLayer = true
//        self.backView.layer?.backgroundColor = NSColor.whiteColor().CGColor
        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func switchToYesterday(sender: AnyObject) {
        print("switch to YesterdayStoryboard", terminator: "\n")
        self.delegate?.onSwitchToYesterday()
    }
}

