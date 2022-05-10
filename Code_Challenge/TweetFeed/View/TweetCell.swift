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
	
	var buttonTapCallback: () -> ()  = { }

	private lazy var contentLabel: UILabel = {
		let label = UILabel()
		label.numberOfLines = 0
		label.translatesAutoresizingMaskIntoConstraints = false
		
		return label
	}()
	
	private lazy var userButton: UIButton = {
		let button = UIButton(frame: .zero)
		button.setTitleColor(.blue, for: .normal)
		button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
		button.translatesAutoresizingMaskIntoConstraints = false
		
		return button
	}()
	
	override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)
		self.contentView.addSubview(contentLabel)
		self.contentView.addSubview(userButton)
		userButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)

		
		NSLayoutConstraint.activate([
			contentLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
			contentLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
			contentLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
			
			userButton.heightAnchor.constraint(equalToConstant: 44.0),
			userButton.leadingAnchor.constraint(equalTo: contentLabel.leadingAnchor),
			userButton.topAnchor.constraint(equalTo: contentLabel.bottomAnchor),
			userButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
		])
	}
	
	@objc func didTapButton() {
		buttonTapCallback()
	}
	
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented.")
	}
	
	override func prepareForReuse() {
		super.prepareForReuse()
	}
	
	func configure(_ tweet: Tweet) {
		self.contentLabel.text = tweet.content
		userButton.setTitle("Follow \(tweet.user)'s tweets", for: .normal)
		
	}
}
