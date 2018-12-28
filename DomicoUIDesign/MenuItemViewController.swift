//
//  MenuItemViewController.swift
//  DomicoUIDesign
//
//  Created by Piklu Majumder-401 on 12/28/18.
//  Copyright © 2018 Piklu Majumder-401. All rights reserved.
//

import UIKit

class MenuItemViewController: UIViewController {

    @IBOutlet weak var menubottomconstraint: NSLayoutConstraint!
    @IBOutlet weak var menuitemview: UIView!
    @IBOutlet weak var mScrollView: UIScrollView!
    @IBOutlet weak var menutopconstraint: NSLayoutConstraint!
    @IBOutlet weak var menuheightconstraint: NSLayoutConstraint!
    @IBOutlet weak var mButtonNecessary: UIButton!
    @IBOutlet weak var mButtonnoNeed: UIButton!

    var mButtonNecessaryAlreadySelected = false
    var mButtonNoNeedAlreadySelected = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        self.menuheightconstraint.constant = 0
        self.menuitemview.isHidden = true
        self.view.layoutIfNeeded()
    }

    @IBAction func necessary(_ sender: UIButton) {
        if !mButtonNecessaryAlreadySelected {
            mButtonNecessary .setImage(UIImage(named: "radio_select"), for: .normal)
            mButtonnoNeed.setImage(UIImage(named: "radio_normal"), for: .normal)
            mButtonNecessaryAlreadySelected = true
            mButtonNoNeedAlreadySelected = false
            self.menuheightconstraint.constant = 600
            self.view.layoutIfNeeded()
            self.menuitemview.isHidden = false
            let correntOffset = self.mScrollView.contentOffset
            var newOffset:CGPoint = correntOffset
            newOffset.y += 600
            self.mScrollView.setContentOffset(newOffset, animated: false)

        }
    }

    @IBAction func noneed(_ sender: UIButton) {
        if !mButtonNoNeedAlreadySelected {
            mButtonnoNeed.setImage(UIImage(named: "radio_select"), for: .normal)
            mButtonNecessary .setImage(UIImage(named: "radio_normal"), for: .normal)
            mButtonNoNeedAlreadySelected = true
            mButtonNecessaryAlreadySelected = false
            self.menuheightconstraint.constant = 0
            self.menuitemview.isHidden = true
            self.view.layoutIfNeeded()
        }
    }
}
