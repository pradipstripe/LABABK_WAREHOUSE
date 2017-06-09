//
//  GetStartedVC.swift
//  LABABK_Warehouse
//
//  Created by iBlazing Mac Mini 3 on 08/06/17.
//  Copyright © 2017 iBlazing Mac Mini 3. All rights reserved.
//

import UIKit

class GetStartedVC: UIViewController {

    @IBOutlet var btnLogin : UIButton!
    @IBOutlet var btnRegister : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnLogin(_ sender: AnyObject){
        
             let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            let LoginVC = storyBoard.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
          self.navigationController?.pushViewController(LoginVC, animated: true)
        
    }

}
