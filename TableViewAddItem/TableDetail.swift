//
//  TableDetail.swift
//  TableViewAddItem
//
//  Created by Roshan Thapaliya on 2/20/16.
//  Copyright © 2016 Roshan Thapaliya. All rights reserved.
//

import UIKit



class TableDetail: UIViewController, UITextFieldDelegate{
    
   
    var affiliation: String?
    var index: Int?
    
    
    @IBOutlet weak var myTextField: UITextField!
    
    @IBOutlet weak var Label: UIButton!

    
    @IBOutlet weak var EmailValue: UILabel!
    
    override func viewDidLoad() {
        
        //
        myTextField.becomeFirstResponder()
        myTextField.delegate = self
        
        myTextField.text = self.affiliation
        
    }
    
    
    override func viewWillDisappear(animated: Bool) {
        
        
        if var edit = affiliation{
            items[index!] = myTextField.text!
            
        }
        else{
        if let toAdd=myTextField.text{
        items.append(toAdd)
        
        	
        }
        }
        
        func textFieldDidBeginEditing(textField: UITextField!) {    //delegate method
            print(1)
        }
        
        func textFieldShouldEndEditing(textField: UITextField!) -> Bool {  //delegate
            return false
        }
        
        func textFieldShouldReturn(textField: UITextField!) -> Bool {   //delegate
            myTextField.resignFirstResponder()
            
            return true
        }
        
    }
    
    
    
    @IBAction func DoneAction(sender: AnyObject) {
        myTextField.resignFirstResponder()
    }
   

   

    @IBAction func MapAction(sender: AnyObject) {
        let alertController = UIAlertController(title: "Simple Button Alert", message: "Message", preferredStyle: .Alert)
        
        alertController.addTextFieldWithConfigurationHandler(
            {
                (textField: UITextField!) in
                textField.placeholder = "Enter email address"
        })
        
        let OkButton = UIAlertAction(title: "Ok", style: .Default) {  (action) in
            
            if let textFields = alertController.textFields{
                let textFieldArray = textFields as [UITextField]
                let emailaddress = textFieldArray[0].text
                self.EmailValue.text = emailaddress
                print(emailaddress)
                
            }
            
        }
        
        alertController.addAction(OkButton)
        
        let CancelButton = UIAlertAction(title: "Cancel", style: .Default){(action) in
            print(action)
        }
        alertController.addAction(CancelButton)
        
        
        
        
        self.presentViewController(alertController, animated: true, completion: nil)
        
    }
    



}