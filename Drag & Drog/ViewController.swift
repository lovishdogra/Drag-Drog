//
//  ViewController.swift
//  Drag & Drog
//
//  Created by Lovish Dogra on 17/03/16.
//  Copyright © 2016 Lovish Dogra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MyView: myView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let halfSizeOfView = 25.0
        let maxViews = 25
        let insetSize = CGRectInset(self.view.bounds, CGFloat(Int(2 * halfSizeOfView)), CGFloat(Int(2 * halfSizeOfView))).size
        
        // Add the Views
        for i in 0..<maxViews {
            let pointX = CGFloat(UInt(arc4random() %
                UInt32(UInt(insetSize.width))))
            let pointY = CGFloat(UInt(arc4random() %
                UInt32(UInt(insetSize.height))))
            
            let newView = myView(frame: CGRectMake(pointX, pointY, 50, 50))
            self.view.addSubview(newView)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

