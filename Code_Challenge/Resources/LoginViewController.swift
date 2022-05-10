//
//  LoginViewController.swift
//  Code_Challenge
//
//  Created by Alvin Tu on 5/10/22.
//  Copyright © 2022 JOOR. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
		navigationController?.isNavigationBarHidden = true
		view.backgroundColor = .systemGray
		let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
		button.backgroundColor = .systemYellow
		button.layer.cornerRadius = 20
		button.setTitle("Login", for: .normal)
		button.addTarget(self, action: #selector(loginTapped), for: .touchUpInside)
		
		self.view.addSubview(button)
    }
	
	@objc func loginTapped(sender: UIButton!) {
		self.navigationController?.popViewController(animated: true)
	}
}
