//
//  ViewController.swift
//  hello
//
//  Created by Aditya Bhasin on 02/11/17.
//  Copyright © 2017 Conlini. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    //MARK: Properties
    @IBOutlet weak var mealNameTxtFLD: UITextField!
    @IBOutlet weak var mealLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
        
        mealNameTxtFLD.delegate = self
    }
    
    //MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    func textFieldDidEndEditing(textField: UITextField) {
        mealLabel.text = textField.text
    }
    
    
    
    //MARK: Actions
   @IBAction func setDefaultLabelText(sender: UIButton) {
    mealLabel.text = "Default Text"
    }
}

