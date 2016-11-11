//
//  FriendTableViewCell.swift
//  MoodTracker-starter
//
//  Created by Nikolas Burk on 02/11/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class FriendTableViewCell: UITableViewCell {
    
    var instanceFriendsTableViewController: FriendsTableViewController!
    
    var friend: Friend! {
        didSet {
//            nameLabel.text = friend.name
//            emojiButton.setTitle(friend.mood.rawValue, for: .normal)
//            moodDescriptionLabel.text = Friend.MoodDescription(oneFriend: friend.mood)
        }
    }
  
  @IBAction func moodButtonPressed(_ sender: UIButton) {
    print(#line, #function)
    let newMood = getNewMood()
    instanceFriendsTableViewController.updateEmoji(friend: friend, newMood: newMood)
  }

    @IBOutlet weak var nameLabel: UILabel!

  
    @IBOutlet weak var moodDescriptionLabel: UILabel!

  
    @IBOutlet weak var emojiButton: UIButton!
    
    func getNewMood() -> Mood {
        switch friend.mood {
        case .angry:
            return .happy
        case .happy:
            return .medium
        case .medium:
            return .angry
        }
    }
  
}
