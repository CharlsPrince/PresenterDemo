//
//  NotesPresenter.swift
//  PersenterDemo
//
//  Created by charls on 16/7/21.
//  Copyright © 2016年 Charls. All rights reserved.
//

import Foundation
import UIKit

final class NotesPresenter: NotesAndBooksListInteractor {
    
    override weak var tableView: UITableView? {
        didSet {
            tableView?.registerClass(NoteCell.self, forCellReuseIdentifier: NoteCell.cellID)
        }
    }
    
    override init() {
        super.init()
    }
    
    lazy var notes:[Note] = {
        let note = Note()
        note.content = "\(arc4random() % 1000000)"
        note.createTime = "2016-7-21"
        note.noteId = "\(arc4random() % 1000000)"
        
        let note_2 = Note()
        note_2.content = "\(arc4random() % 1000000)"
        note_2.createTime = "2016-7-21"
        note_2.noteId = "\(arc4random() % 1000000)"
        
        let note_3 = Note()
        note_3.content = "\(arc4random() % 1000000)"
        note_3.createTime = "2016-7-21"
        note_3.noteId = "\(arc4random() % 1000000)"
        
        var arr = [Note]()
        arr.append(note)
        arr.append(note_2)
        arr.append(note_3)
        return arr
    }()
    
    override func fetchData() {
        
        notes.forEach { self.dataSource.append($0) }
        
//        self.dataSource = notes
        tableView?.reloadData()
    }

}


extension NotesPresenter {
    
   override  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(NoteCell.cellID, forIndexPath: indexPath) as! NoteCell
        let note: Note
         note = dataSource[indexPath.row] as! Note
        cell.renderWithNote(note)
        return cell
    }
    
}

