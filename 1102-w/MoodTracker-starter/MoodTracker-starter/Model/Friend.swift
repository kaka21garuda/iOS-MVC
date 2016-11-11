//
//  Friend.swift
//  MoodTracker-starter
//
//  Created by Nikolas Burk on 04/11/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

class Friend {
    
    let name: String
    var mood: Mood
    
    init(name: String, mood: Mood){
        self.name = name
        self.mood = mood
    }
    
    static func MoodDescription(oneFriend: Mood) -> String {
        switch oneFriend {
        case .angry:
            return "Get out of my lawn!!!"
        case .happy:
            return "Hello World!"
        case .medium:
            return "Do I know you?"
        }
    }
}
