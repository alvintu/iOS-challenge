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
		view.backgroundColor = .green
		let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
		button.backgroundColor = .green
		button.setTitle("Login", for: .normal)
		button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
		
		self.view.addSubview(button)
    }
	
	@objc func buttonAction(sender: UIButton!) {
		self.navigationController?.popViewController(animated: true)
	}
}
