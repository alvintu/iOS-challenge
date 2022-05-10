//
//  TweetFeedViewController.swift
//  Code_Challenge
//
//  Created by Alvin Tu on 5/10/22.
//  Copyright © 2022 JOOR. All rights reserved.
//

import UIKit

class TweetFeedViewController: UIViewController {
	
	var tweets : [Tweet]? {
		didSet { tableView.reloadData() }
	}
	
	private lazy var tableView: UITableView = {
		let view = UITableView(frame: .zero, style: .grouped)
		view.delegate = self
		view.dataSource = self
		view.estimatedRowHeight = 200
		view.register(TweetCell.self, forCellReuseIdentifier: TweetCell.identifier)
		view.rowHeight = UITableView.automaticDimension
		view.translatesAutoresizingMaskIntoConstraints = false
		
		return view
	}()


    override func viewDidLoad() {
        super.viewDidLoad()
		
		view.addSubview(tableView)
		view.backgroundColor = .white
		
		NSLayoutConstraint.activate([
			tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
			tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
			tableView.topAnchor.constraint(equalTo: view.topAnchor),
			tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
		])
		
		
		self.title = "Timeline"
		
		navigationItem.rightBarButtonItem = UIBarButtonItem(
			title: "Logout",
			style: .done,
			target: self,
			action: #selector(logoutTapped)
		)
		
		tweets = TwitterClient.shared.loadTimeline()
    }
	
	@objc func logoutTapped() {
	navigationController?.pushViewController(LoginViewController(), animated: true)
	}
	override func viewWillAppear(_ animated: Bool) {
		navigationController?.navigationBar.prefersLargeTitles = true
		navigationController?.isNavigationBarHidden = false

	}
}

extension TweetFeedViewController: UITableViewDelegate, UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		tweets?.count ?? 0
	}
	
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		UITableView.automaticDimension
	}

	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: TweetCell.identifier, for: indexPath) as! TweetCell

		
		if let tweet = tweets?[indexPath.row] {
			cell.configure(tweet)
		}
		
		return cell
	}
}
