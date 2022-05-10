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
		button.setTitle("Test Button", for: .normal)
		button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
		
		self.view.addSubview(button)

        // Do any additional setup after loading the view.
    }
	
	@objc func buttonAction(sender: UIButton!) {
		print("Button tapped")
		self.navigationController?.popViewController(animated: true)
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
