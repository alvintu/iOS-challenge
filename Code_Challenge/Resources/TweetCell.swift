//
//  TweetCell.swift
//  Code_Challenge
//
//  Created by Alvin Tu on 5/10/22.
//  Copyright © 2022 JOOR. All rights reserved.
//

import UIKit

class TweetCell: UITableViewCell {
	static let identifier = "TweetCell"
	
	private lazy var contentLabel: UILabel = {
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		
		return label
	}()
	
	private lazy var button: UIButton = {
		let button = UIButton(frame: .zero)
		button.setTitle("BUTTON", for: .normal)
		button.setTitleColor(.blue, for: .normal)
		button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
		button.translatesAutoresizingMaskIntoConstraints = false
		
		return button
	}()
	
	override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)
		self.contentView.addSubview(contentLabel)
//		self.contentView.addSubview(button)
		
		NSLayoutConstraint.activate([
			contentLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
			contentLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
			contentLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
			
//			button.heightAnchor.constraint(equalToConstant: 44.0),
//			button.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
//			button.topAnchor.constraint(equalTo: titleLabel.bottomAnchor),
//			button.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
		])
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented.")
	}
	
	override func prepareForReuse() {
		super.prepareForReuse()
	}
	
	func configure(_ tweet: Tweet) {
		self.contentLabel.text = tweet.content
	}
}
