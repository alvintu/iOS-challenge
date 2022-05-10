//
//  LoginTextField.swift
//  Code_Challenge
//
//  Created by Alvin Tu on 5/10/22.
//  Copyright © 2022 JOOR. All rights reserved.
//

import UIKit

enum TextFieldType {
	case user
	case password
}

class LoginTextField: UITextField {
	
	func setup() {
		font = UIFont.systemFont(ofSize: 15)
		borderStyle = UITextField.BorderStyle.roundedRect
		autocorrectionType = UITextAutocorrectionType.no
		keyboardType = UIKeyboardType.default
		returnKeyType = UIReturnKeyType.done
		clearButtonMode = UITextField.ViewMode.whileEditing
		contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
	}
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		setup()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
}
