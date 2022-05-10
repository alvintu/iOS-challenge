//
//  ViewModelTests.swift
//  Code_ChallengeTests
//
//  Created by Alvin Tu on 5/10/22.
//  Copyright © 2022 JOOR. All rights reserved.
//

import XCTest
@testable import Code_Challenge

class ViewModelTests: XCTestCase {

	
	func testLogOutAndLogin() {
		let loginViewModel = LoginViewController.ViewModel()
		let tweetFeedViewModel = TweetFeedViewController.ViewModel()
		
		loginViewModel.login(for: "user", and: "password")
		XCTAssertEqual(TwitterClient.shared.isLoggedIn.value, true)
		
		tweetFeedViewModel.logout()
		XCTAssertEqual(TwitterClient.shared.isLoggedIn.value, false)
	}
	
	func testBadUsername() {
		let loginViewModel = LoginViewController.ViewModel()
		loginViewModel.login(for: "oogabooga", and: "password")
		XCTAssertEqual(TwitterClient.shared.isLoggedIn.value, false)

	}
	
	func testBadPassword() {
		let loginViewModel = LoginViewController.ViewModel()
		loginViewModel.login(for: "user", and: "oogabooga")
		XCTAssertEqual(TwitterClient.shared.isLoggedIn.value, false)
	}
}
