//
//  LoginViewController.swift
//  LetsKhwasish
//
//  Created by Nidhi.sharma3 on 06/06/20.
//  Copyright © 2020 Nidhi.sharma3. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var btnRememberMe: UIButton!
    @IBOutlet weak var textFeildEmail: UITextField!
    @IBOutlet weak var textFeildPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpNavigationBar()
        // Do any additional setup after loading the view.
    }
    
    
    func setUpNavigationBar(){
        //self.navigationItem.navigationItem.hide
        //self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.textFeildEmail.delegate = self
        self.textFeildPassword.delegate = self
        
        textFeildEmail.attributedPlaceholder = NSAttributedString(string: "Enter your email", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        textFeildPassword.attributedPlaceholder = NSAttributedString(string: "Enter your password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        
    }
    
    //UIButton Action
    @IBAction func btnBackAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btnFbAction(_ sender: Any) {
    }
    
    @IBAction func btnRememberMe(_ sender: Any) {
        btnRememberMe.isSelected = !btnRememberMe.isSelected
    }
    
    @IBAction func btnTwitterAction(_ sender: Any) {
    }
    @IBAction func btnGetStartedAction(_ sender: Any) {
    }
    
    @IBAction func btnForgotPswdAction(_ sender: Any) {
    }
    
    @IBAction func btnSignUpAction(_ sender: Any) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SignUpViewController") as? SignUpViewController
               self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    //UITextFeild Delegate
    func textFieldShouldReturn(_ textField: UITextField!) -> Bool
       {
        if textField == textFeildEmail{
               textFeildPassword.becomeFirstResponder()
        }
           textField.resignFirstResponder()
           return true;
       }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
