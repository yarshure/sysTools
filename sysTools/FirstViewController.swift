//
//  FirstViewController.swift
//  sysTools
//
//  Created by 孔祥波 on 15/2/15.
//  Copyright (c) 2015年 Kong XiangBo. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var runing: UILabel!
    override func viewDidLoad() {
        let boottime = uptime() as CLong
//        var a:NSNumber = NSNumber()
//        a = boottime
        var date:NSDate  = NSDate(timeIntervalSince1970 : Double(boottime))
        //let dateString: String?=
        //label.text? = "abcd"
        //label.text? = "\(date.description)"
       
        var zone:NSTimeZone=NSTimeZone.systemTimeZone()
         var local:NSLocale? = NSLocale(localeIdentifier: zone.name)
//        var b:String = zone.abbreviationForDate(date)!
//        
        //let format:NSDateFormatter=NSDateFormatter()
        var s:String = NSDateFormatter.localizedStringFromDate(date, dateStyle: .MediumStyle,timeStyle: .MediumStyle)
        label.text? = date.descriptionWithLocale(local)!
        label.text?=s
        let now:NSDate = NSDate()
        var sec = now.timeIntervalSinceDate(date)
        var days: Double = sec/86400
        runing.text = "this device have runing \(Int(days)) day"
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

