//
//  FriendsTableViewController.swift
//  MoodTracker-starter
//
//  Created by Nikolas Burk on 02/11/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class FriendsTableViewController: UITableViewController {
    
    var friendArray = [
        Friend(name: "Jack", mood: .angry),
        Friend(name: "Joe", mood: .medium),
        Friend(name: "Nick", mood: .happy)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendTableViewCell") as! FriendTableViewCell!
        let oneFriend = friendArray[indexPath.row]
        cell?.nameLabel.text = oneFriend.name
        cell?.emojiButton.setTitle(oneFriend.mood.rawValue, for: .normal)
        
        switch oneFriend.mood {
        case .angry:
            cell?.moodDescriptionLabel.text = "Get out of my lawn!!!"
        case .happy:
            cell?.moodDescriptionLabel.text = "Hello World!"
        case .medium:
            cell?.moodDescriptionLabel.text = "Do I know you?"
        }
        
        return cell!
        
    }
    
}
