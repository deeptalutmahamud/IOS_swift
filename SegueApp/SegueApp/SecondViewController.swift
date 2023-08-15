//
//  SecondViewController.swift
//  SegueApp
//
//  Created by Talut mahamud Deep on 27/6/23.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var DateLabel: UILabel!
    var Name = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        NameLabel.text = Name

        
    }
    

}
