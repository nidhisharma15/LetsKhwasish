//
//  LandingViewController.swift
//  LetsKhwasish
//
//  Created by Nidhi.sharma3 on 06/06/20.
//  Copyright © 2020 Nidhi.sharma3. All rights reserved.
//

import UIKit

class LandingViewController: UIViewController {

    @IBOutlet weak var btnSignUp: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(animated)
        setUpNavigationBar()
    }
    
    func setUpNavigationBar(){
        //self.navigationItem.navigationItem.hide
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    
    //UIButton Action
    @IBAction func btnSignInAction(_ sender: Any) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "LoginViewController") as? LoginViewController
              self.navigationController?.pushViewController(vc!, animated: true)
    }
  
    @IBAction func btnFbAction(_ sender: Any) {
    }
    
    @IBAction func btnTwitterAction(_ sender: Any) {
    }
    
    @IBAction func btnSignUpAction(_ sender: Any) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SignUpViewController") as? SignUpViewController
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    //UITextFeild Delegate Methods
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
