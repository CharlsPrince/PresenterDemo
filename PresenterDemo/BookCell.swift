//
//  BookCell.swift
//  PersenterDemo
//
//  Created by charls on 16/7/21.
//  Copyright © 2016年 Charls. All rights reserved.
//

import UIKit

class BookCell: UITableViewCell {

    static var celID: String = "BookCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func renderWithBook(book: Book) {
        self.textLabel?.text = book.name.map { $0 }
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
