//
//  TableDetail.swift
//  TableViewAddItem
//
//  Created by Roshan Thapaliya on 2/20/16.
//  Copyright © 2016 Roshan Thapaliya. All rights reserved.
//

import UIKit



class TableDetail: UIViewController, UITextFieldDelegate {
    
   
    var affiliation: String?
    var index: Int?
    
    
    @IBOutlet weak var myTextField: UITextField!
    
    @IBOutlet weak var Label: UIButton!

    
    override func viewDidLoad() {
        
        //
        myTextField.becomeFirstResponder()
        myTextField.delegate = self
        
        myTextField.text = self.affiliation
        
    }
    
    
    override func viewWillDisappear(animated: Bool) {
        
        
        if var edit = affiliation{
            
        //
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
   





}