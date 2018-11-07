//
//  ChecklistItem.swift
//  Checklist
//
//  Created by Spencer Merryman on 11/5/18.
//  Copyright © 2018 Spencer Merryman. All rights reserved.
//

import Foundation
import Firebase

class ChecklistItem {
    var text: String!
    var checked: Bool!
    
    init(text: String, checked: Bool) {
        self.text = text
        self.checked = checked
    }
    
    init?(snapshot: DataSnapshot) {
        guard
            let value = snapshot.value as? [String: AnyObject],
            let text = value["text"] as? String,
            let checked = value["checked"] as? Bool else {
        return nil
        }
        
        self.text = text
        self.checked = checked
    }
    
    func toggleChecked(){
        checked = !checked
    }
    
    func toAnyObject() -> Any {
        return [
            "text": text,
            "checked": checked
        ]
    }

}
