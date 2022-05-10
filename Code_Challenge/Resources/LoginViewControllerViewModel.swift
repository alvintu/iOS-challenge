//
//  LoginViewControllerViewModel.swift
//  Code_Challenge
//
//  Created by Alvin Tu on 5/10/22.
//  Copyright © 2022 JOOR. All rights reserved.
//
import Foundation

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
