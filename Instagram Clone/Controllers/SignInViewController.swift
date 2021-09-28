//
//  SignInViewController.swift
//  Instagram Clone
//
//  Created by Anvarjon Khojimatov on 2021/09/28.
//

import UIKit

class SignInViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    //MARK: - Methods
    
    func callSignUpViewController() {
        let vc = SignUpViewController(nibName: "SignUpViewController", bundle: nil)
        self.present(vc, animated: true, completion: nil)
    }
    
    
    
    //MARK: - Actions
    
    @IBAction func signIn(_ sender: Any) {
        sceneDelegate().callHomeController()
        
    }
    
    @IBAction func SignUp(_ sender: Any) {
        callSignUpViewController()
    }
    

}
