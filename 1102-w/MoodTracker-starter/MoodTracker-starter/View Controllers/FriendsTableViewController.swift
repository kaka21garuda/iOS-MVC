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
        print(#function, self)
        print(friendArray[0].mood.rawValue)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendTableViewCell") as! FriendTableViewCell!

        cell?.instanceFriendsTableViewController = self
        let oneFriend = friendArray[indexPath.row]
        cell?.friend = oneFriend
        cell?.nameLabel.text = oneFriend.name
        cell?.emojiButton.setTitle(oneFriend.mood.rawValue, for: .normal)
        cell?.moodDescriptionLabel.text = Friend.MoodDescription(oneFriend: oneFriend.mood)
        return cell!
    }
    
    func updateEmoji(friend: Friend, newMood: Mood) {
        friend.mood = newMood
        tableView.reloadData()
    }
    
    func addFriend(friend: Friend) {
        friendArray.append(friend)
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let addFriendViewController: AddFriendViewController = segue.destination as! AddFriendViewController
        addFriendViewController.friendsTableViewController = self
    }
}
