//
//  TweetFeedViewControllerViewModel.swift
//  Code_Challenge
//
//  Created by Alvin Tu on 5/10/22.
//  Copyright © 2022 JOOR. All rights reserved.
//

import Foundation

extension TweetFeedViewController {
	final class ViewModel: NSObject {
		
		var tweets : [Tweet]? = TwitterClient.shared.loadTimeline()
		
		
		var userIsLoggedIn: Bool {
			return TwitterClient.shared.isLoggedIn.value
		}
		
		
		func logout() {
			TwitterClient.shared.logOut()
		}
		
		override init() {
			super.init()
		}
	}
}
