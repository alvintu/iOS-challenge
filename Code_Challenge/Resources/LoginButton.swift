//
//  LoginButton.swift
//  Code_Challenge
//
//  Created by Alvin Tu on 5/10/22.
//  Copyright © 2022 JOOR. All rights reserved.
//

import UIKit

class LoginButton: UIButton {
	

	private func setup() {
		backgroundColor = .systemYellow
		layer.cornerRadius = 20
		setTitle("Login", for: .normal)

	}
	override init(frame: CGRect) {
		super.init(frame: frame)
		setup()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
}
