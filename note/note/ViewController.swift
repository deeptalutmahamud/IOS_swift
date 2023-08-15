//
//  ViewController.swift
//  note
//
//  Created by Talut mahamud Deep on 13/6/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameText: UITextField!
    
    @IBOutlet weak var birthdayText: UITextField!
    
    @IBOutlet weak var nameField: UILabel!
    
    @IBOutlet weak var birthField: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let storedName = UserDefaults.standard.object(forKey: "Name")
        let storedBirth = UserDefaults.standard.object(forKey: "Birth")
        if let newName = storedName as? String{
            nameField.text = "Name: \(newName)"
            
        }
        
        if let newBirth = storedBirth as? String{
            birthField.text = " Birthday: \(newBirth) "
}
    }
    @IBAction func save(_ sender: Any) {
        
        
        UserDefaults.standard.set(nameText.text!, forKey: "Name")
        UserDefaults.standard.set(birthdayText.text!, forKey: "Birth")
        nameField.text = "Name: \(nameText.text!) "
        birthField.text = "Birthday:  \(birthdayText.text!)"
    }
    
    @IBAction func remove(_ sender: Any) {
        
        let storedName = UserDefaults.standard.object(forKey: "Name")
        let storedBirth = UserDefaults.standard.object(forKey: "Birth")
        
        if (storedName as? String) != nil
    {
              UserDefaults.standard.removeObject(forKey: "Name")
            nameField.text = " Name: "
          }
        
        if (storedBirth as? String) != nil {
          UserDefaults.standard.removeObject(forKey: "Birth")
            birthField.text = " Birthday:"
        }
        
    }
    
}                

