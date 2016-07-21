//
//  NoteCell.swift
//  PersenterDemo
//
//  Created by charls on 16/7/21.
//  Copyright © 2016年 Charls. All rights reserved.
//

import UIKit

class NoteCell: UITableViewCell {

    static var cellID: String = "NoteCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
    }

    func renderWithNote(note: Note) {
        self.accessoryType = .DisclosureIndicator
        self.textLabel?.text = note.content.map { $0 }
        self.detailTextLabel?.text = note.createTime.map { $0 }
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
