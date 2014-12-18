//
//  ViewController.swift
//  ProjectA
//
//  Created by PASCAL ARINGO ODEK on 12/15/14.
//  Copyright (c) 2014 PASCAL ARINGO ODEK. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate{

    @IBOutlet weak var simpleTextField: UITextField!
    @IBOutlet weak var simpleLabel: UILabel!
    @IBAction func changeLabel(sender: AnyObject) {
        simpleLabel.text="Hello,"+simpleTextField.text+"!"
        self.simpleTextField.resignFirstResponder()
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

