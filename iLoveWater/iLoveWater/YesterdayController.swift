//
//  YesterdayController.swift
//  iLoveWater
//
//  Created by yexiaohui on 16/8/23.
//  Copyright © 2016年 yexiaohui. All rights reserved.
//

import Cocoa
protocol TodayDelegate {
    func onSwitchToToday()
}
class YesterdayController: NSViewController {
    var delegate : TodayDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override var representedObject: AnyObject? {
        didSet {
            // Update the view, if already loaded.
        }
    }
    
    @IBAction func button(sender: AnyObject) {
        print("switch to MainStoryboard!", terminator: "\n")
        self.delegate?.onSwitchToToday()
    }
    
    
}
