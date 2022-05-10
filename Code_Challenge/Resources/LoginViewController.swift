//
//  LoginViewController.swift
//  Code_Challenge
//
//  Created by Alvin Tu on 5/10/22.
//  Copyright © 2022 JOOR. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
	
	let userTextField =  UITextField(frame: CGRect(x: 20, y: 100, width: 300, height: 40))
	let passwordTextField =  UITextField(frame: CGRect(x: 20, y: 160, width: 300, height: 40))

    override func viewDidLoad() {
        super.viewDidLoad()
		
		navigationController?.isNavigationBarHidden = true
		view.backgroundColor = .systemGray
		
		let button = UIButton(frame: CGRect(x: 100, y: 250, width: 100, height: 50))
		button.backgroundColor = .systemYellow
		button.layer.cornerRadius = 20
		button.setTitle("Login", for: .normal)
		button.addTarget(self, action: #selector(loginTapped), for: .touchUpInside)
		
		
		userTextField.placeholder = "Enter username here"
		userTextField.font = UIFont.systemFont(ofSize: 15)
		userTextField.borderStyle = UITextField.BorderStyle.roundedRect
		userTextField.autocorrectionType = UITextAutocorrectionType.no
		userTextField.keyboardType = UIKeyboardType.default
		userTextField.returnKeyType = UIReturnKeyType.done
		userTextField.clearButtonMode = UITextField.ViewMode.whileEditing
		userTextField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
		userTextField.delegate = self

		
		
		passwordTextField.placeholder = "Enter here"
		passwordTextField.font = UIFont.systemFont(ofSize: 15)
		passwordTextField.borderStyle = UITextField.BorderStyle.roundedRect
		passwordTextField.autocorrectionType = UITextAutocorrectionType.no
		passwordTextField.keyboardType = UIKeyboardType.default
		passwordTextField.returnKeyType = UIReturnKeyType.done
		passwordTextField.clearButtonMode = UITextField.ViewMode.whileEditing
		passwordTextField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
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
