//
//  ViewController.swift
//  Caffeine-Tracker
//
//  Created by Fowler, Jordan on 6/4/20.
//  Copyright © 2020 Fowler, Jordan. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    //MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var caffeineTrackerLabel: UILabel!
    @IBOutlet weak var miligramsNameLabel: UILabel!
    @IBOutlet weak var todayLogLabel: UILabel!
    @IBOutlet weak var mgLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Handle the text field’s user input through delegate callbacks.
        nameTextField.delegate = self
        
    }

    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        todayLogLabel.text = textField.text
    }
    
    //MARK: Actions
    @IBAction func logButton(_ sender: UIButton) {
        let info = nameTextField.text
        todayLogLabel.text = "Today: \(info ?? "")"
        
       // func textFieldDidBeginEditing(_ textField: UITextField) {
       //     nameTextField.text = "" }
        
      //  let storedNum = Double(nameTextField.text)
        
        //if {logButton.isPressed}
        //nameTextField.textFieldShouldClear?(true)
       
        
    //Setting
        struct defaultKeys {
            static let key1 = "firtStringKey"
        }
        let defaults = UserDefaults.standard
        defaults.set(" \(info ?? "") ", forKey: defaultKeys.key1)
  
    //Getting
        
    
    
    
    
    }

    

}

