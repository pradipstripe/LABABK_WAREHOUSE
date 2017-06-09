//
//  LoginVC.swift
//  LABABK_Warehouse
//
//  Created by iBlazing Mac Mini 3 on 08/06/17.
//  Copyright © 2017 iBlazing Mac Mini 3. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet var btnLogin : UIButton!
    @IBOutlet var btnFacebook : UIButton!
    @IBOutlet var btnGmail : UIButton!
    @IBOutlet var btnForgotPassword : UIButton!
    @IBOutlet var btnSignUp : UIButton!
    
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        SetUI()
    }
    
    func SetUI(){
        
        btnLogin.layer.cornerRadius = 7
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }
    
    
    func validation(){
        
        
        if (txtEmail.text?.isEmpty)!{
            
            let alertController = UIAlertController(title: "Alert", message: "Please enter email address", preferredStyle: .alert)
            let OKAction = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction!) in
                
                // Code in this block will trigger when OK button tapped.
                print("Ok button tapped");
            }
            alertController.addAction(OKAction)
            self.present(alertController, animated: true, completion:nil)
            
        }else if (txtPassword.text?.isEmpty)!{
            
            let alertController = UIAlertController(title: "Alert", message: "Please enter password", preferredStyle: .alert)
            let OKAction = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction!) in
                
                // Code in this block will trigger when OK button tapped.
                print("Ok button tapped");
                
            }
            
            alertController.addAction(OKAction)
            self.present(alertController, animated: true, completion:nil)
            
        }else{
            
            let providedEmailAddress = txtEmail.text
            let isEmailAddressValid = isValidEmailAddress(emailAddressString: providedEmailAddress!)
            
            if isEmailAddressValid
            {
                print("Email address is valid")
            } else {
                print("Email address is not valid")
                displayAlertMessage(messageToDisplay: "Email address is not valid")
            }
            
        }
    }
    
    
    
    func isValidEmailAddress(emailAddressString: String) -> Bool {
        
        var returnValue = true
        let emailRegEx = "[A-Z0-9a-z.-_]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,3}"
        
        do {
            let regex = try NSRegularExpression(pattern: emailRegEx)
            let nsString = emailAddressString as NSString
            let results = regex.matches(in: emailAddressString, range: NSRange(location: 0, length: nsString.length))
            
            if results.count == 0
            {
                returnValue = false
            }
            
        } catch let error as NSError {
            print("invalid regex: \(error.localizedDescription)")
            returnValue = false
        }
        
        return  returnValue
    }
    
    func displayAlertMessage(messageToDisplay: String)
    {
        let alertController = UIAlertController(title: "Alert", message: messageToDisplay, preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction!) in
            
            // Code in this block will trigger when OK button tapped.
            print("Ok button tapped");
            
        }
        
        alertController.addAction(OKAction)
        self.present(alertController, animated: true, completion:nil)
    }
    
    @IBAction func btnLogin(_ sender: AnyObject) {
        
        validation()
        
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func btnSignUp(_ sender: AnyObject) {
        
        
        
    }
    
    @IBAction func btnForgotPassword(_ sender: AnyObject) {
        
        
        
    }
    
    @IBAction func btnFacebook(_ sender: AnyObject) {
        
        
        
    }
    @IBAction func btnGmail(_ sender: AnyObject) {
        
        
        
    }
    
}
