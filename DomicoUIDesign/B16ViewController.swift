//
//  B16ViewController.swift
//  DomicoUIDesign
//
//  Created by Piklu Majumder-401 on 1/22/19.
//  Copyright © 2019 Piklu Majumder-401. All rights reserved.
//

import UIKit

class B16ViewController: UIViewController {

    @IBOutlet weak var innerView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        customizeInnerView()

        // Do any additional setup after loading the view.
    }

    private func customizeInnerView() {
        self.innerView.layer.borderWidth = 1.1
        self.innerView.layer.borderColor = UIColor.black.cgColor
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
