//
//  SignUpViewController.swift
//  LetsKhwasish
//
//  Created by Nidhi.sharma3 on 06/06/20.
//  Copyright © 2020 Nidhi.sharma3. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var textFeildEmail: UITextField!
    @IBOutlet weak var btnAgree: UIButton!
    @IBOutlet weak var textFeildMobile: UITextField!
    @IBOutlet weak var textFeildPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpNavigationBar()
    }
    
    
    
    func setUpNavigationBar(){
           //self.navigationItem.navigationItem.hide
           //self.navigationController?.setNavigationBarHidden(false, animated: true)
           self.textFeildEmail.delegate = self
           self.textFeildMobile.delegate = self
           self.textFeildPassword.delegate = self

           textFeildEmail.attributedPlaceholder = NSAttributedString(string: "Enter your email", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
           textFeildMobile.attributedPlaceholder = NSAttributedString(string: "Enter your mobile no.", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
           textFeildPassword.attributedPlaceholder = NSAttributedString(string: "Enter your password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
     }
    
    //UIButton Actions
    @IBAction func btnBackAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btnAgreeAction(_ sender: Any) {
        btnAgree.isSelected = !btnAgree.isSelected
    }
    
    @IBAction func btnSubmitAction(_ sender: Any) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "InerestViewController") as? InerestViewController
              self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    //UITextFeild Delegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        if textField == textFeildEmail{
            textFeildMobile.becomeFirstResponder()
        }else if textField == textFeildMobile{
            self.textFeildPassword.becomeFirstResponder()
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
