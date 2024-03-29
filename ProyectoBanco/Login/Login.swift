//
//  ViewController.swift
//  Banco BD
//
//  Created by Victor Manuel Ibarra Herrera on 8/27/19.
//  Copyright © 2019 Victor Manuel Ibarra Herrera. All rights reserved.
//

import UIKit

class Login: UIViewController {

    
    var viewLogin:ViewLogin = ViewLogin()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view = viewLogin
        self.hideKeyboardWhenTappedAround()
        viewLogin.btnRegistro.addTarget(self, action: #selector(funcBtnRegister), for: .touchUpInside)
        viewLogin.btnIniciarSesion.addTarget(self, action: #selector(funcBtnLogin), for: .touchUpInside)

        
      
    }
    
    override open var shouldAutorotate: Bool {
        return false
    }
    

    
    @objc func funcBtnLogin(){
        performSegue(withIdentifier: "segueHome", sender: nil)
    }
    
    @objc func funcBtnRegister(){
        performSegue(withIdentifier: "LoginToRegister", sender: nil)
    }
    
    
    
    
    
    
    
    


}

