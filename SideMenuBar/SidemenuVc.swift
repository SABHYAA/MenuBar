//
//  SidemenuVc.swift
//  SideMenuBar
//
//  Created by appinventiv on 20/09/17.
//  Copyright © 2017 appinventiv. All rights reserved.
//

import UIKit

class SidemenuVc: UIViewController {
    var menuShowing = false
    
    @IBOutlet var menuView: UIView!
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    
    @IBAction func viewBtn(_ sender: UIButton) {
        let obj = self.storyboard?.instantiateViewController(withIdentifier: "View2Id") as? View2Vc
        self.navigationController?.pushViewController(obj!, animated: true)
//        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func openmenuBtn(_ sender: Any) {
        if (menuShowing) {
            leadingConstraint.constant = -150
        }else{
           leadingConstraint.constant = 0
            UIView.animate(withDuration: 0.5, animations: {
                self.view.layoutIfNeeded()
            })
        }
    menuShowing = !menuShowing
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
menuView.layer.shadowOpacity = 1
        menuView.layer.shadowRadius = 6
        
    }
}
