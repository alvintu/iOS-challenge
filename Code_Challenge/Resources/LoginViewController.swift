//
//  LoginViewController.swift
//  Code_Challenge
//
//  Created by Alvin Tu on 5/10/22.
//  Copyright © 2022 JOOR. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
	
	let userTextField =  LoginTextField(frame: CGRect(x: 20, y: 100, width: 300, height: 40))
	let passwordTextField =  LoginTextField(frame: CGRect(x: 20, y: 160, width: 300, height: 40))

    override func viewDidLoad() {
        super.viewDidLoad()
		
		navigationController?.isNavigationBarHidden = true
		view.backgroundColor = .systemGray
		
		let button = UIButton(frame: CGRect(x: 100, y: 250, width: 100, height: 50))
		button.backgroundColor = .systemYellow
		button.layer.cornerRadius = 20
		button.setTitle("Login", for: .normal)
		button.addTarget(self, action: #selector(loginTapped), for: .touchUpInside)
		
		
		userTextField.delegate = self
		passwordTextField.delegate = self
		
		self.view.addSubview(userTextField)
		self.view.addSubview(passwordTextField)
		self.view.addSubview(button)
    }
	
	@objc func loginTapped(sender: UIButton!) {
		guard let userText = userTextField.text, let passwordText = passwordTextField.text else { return }
		TwitterClient.shared.logIn(username: userText.lowercased(), password: passwordText.lowercased())
		print(userText,passwordText)
		
		if TwitterClient.shared.isLoggedIn.value  {
		self.navigationController?.popViewController(animated: true)
		}
	}
}

extension LoginViewController: UITextFieldDelegate {
	
}
