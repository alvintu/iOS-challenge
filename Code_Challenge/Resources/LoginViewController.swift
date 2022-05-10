//
//  LoginViewController.swift
//  Code_Challenge
//
//  Created by Alvin Tu on 5/10/22.
//  Copyright © 2022 JOOR. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
	
	let viewModel = LoginViewController.ViewModel()
	
	let userTextField =  LoginTextField(frame: CGRect(x: 20, y: 100, width: 300, height: 40))
	let passwordTextField =  LoginTextField(frame: CGRect(x: 20, y: 160, width: 300, height: 40))

    override func viewDidLoad() {
        super.viewDidLoad()
    }
	
	override func viewWillLayoutSubviews() {
		
		navigationController?.isNavigationBarHidden = true
		view.backgroundColor = .systemGray
		
		let loginButton = LoginButton(frame: CGRect(x: 100, y: 250, width: 100, height: 50))
		loginButton.addTarget(self, action: #selector(loginTapped), for: .touchUpInside)
		
		userTextField.placeholder = "Enter Username"
		passwordTextField.placeholder = "Enter Password"
		
		userTextField.delegate = self
		passwordTextField.delegate = self
		
		view.addSubview(userTextField)
		view.addSubview(passwordTextField)
		view.addSubview(loginButton)
	}
	
	@objc func loginTapped(sender: UIButton!) {
		guard let userText = userTextField.text, let passwordText = passwordTextField.text else { return }
		
		viewModel.login(for: userText, and: passwordText)
		
		if viewModel.userIsLoggedIn {
		self.navigationController?.popViewController(animated: true)
		
		}
	}
}

extension LoginViewController: UITextFieldDelegate {
	
}

extension LoginViewController {
	final class ViewModel: NSObject {
		
		var userIsLoggedIn: Bool {
			return TwitterClient.shared.isLoggedIn.value
		}
		
		
		func login(for user: String, and password: String) {
			TwitterClient.shared.logIn(username: user.lowercased(), password: password.lowercased())
		}
		
		override init() {
			super.init()
		}
	}
}
