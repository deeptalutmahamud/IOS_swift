//
//  ViewController.swift
//  SegueApp
//
//  Created by Talut mahamud Deep on 26/6/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Name: UITextField!
    @IBOutlet weak var Date: UITextField!
    var UserName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func Click(_ sender: Any) {
        UserName = Name.text!
        performSegue(withIdentifier: "tosecond", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toseconnd"{
            let destination = segue.destination as! SecondViewController
            destination.Name = UserName
            
        }
    }
    
}

