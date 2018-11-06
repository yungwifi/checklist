//
//  ChecklistItem.swift
//  Checklist
//
//  Created by Spencer Merryman on 11/5/18.
//  Copyright © 2018 Spencer Merryman. All rights reserved.
//

import Foundation

class ChecklistItem {
    var text = ""
    var checked = false
    
    func toggleChecked(){
        checked = !checked
    }

}
