//
//  AddFriendViewController.swift
//  MoodTracker-starter
//
//  Created by Nikolas Burk on 09/11/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class AddFriendViewController: UIViewController {
    
    var friendsTableViewController: FriendsTableViewController!
    
    // MARK: View Controller Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: Actions
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var emojiSegmentControl: UISegmentedControl!
    
    @IBAction func saveButtonPressed(_ sender: UIButton) {
        // TODO: save the added friend here
        friendsTableViewController.addFriend(friend: Friend(name: nameTextField.text!, mood: changeIndexToMood(index: emojiSegmentControl.selectedSegmentIndex)))
        dismissViewController()
    }
    
    @IBAction func cancelButtonPressed(_ sender: AnyObject) {
        self.dismissViewController()
    }
    
    
    // MARK: Helpers
    
    func dismissViewController() {
        presentingViewController?.dismiss(animated: true)
    }
    
    func changeIndexToMood(index: Int) -> Mood {
        switch index {
        case 0:
            return .happy
        case 1:
            return .medium
        case 2:
            return .angry
        default:
            return .angry
        }
    }
}
