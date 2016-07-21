//
//  BooksPresenter.swift
//  PersenterDemo
//
//  Created by charls on 16/7/21.
//  Copyright © 2016年 Charls. All rights reserved.
//

import Foundation
import UIKit

class BooksPresenter: NotesAndBooksListInteractor {
    
    override weak var tableView: UITableView? {
        didSet {
            tableView?.registerClass(BookCell.self, forCellReuseIdentifier: BookCell.celID)
        }
    }
    
    lazy var books: [Book] = {
        let book = Book()
        book.auther = "charls"
        book.name = "金子哎"
        book.price = 12
        
        var book_: [Book] = []
        book_ = [book,book,book,book,book,book,book]
        
        return book_
    }()
    
    override func fetchData() {
        
        books.forEach { self.dataSource.append($0) }
        self.tableView?.reloadData()
        
    }
    
}


extension BooksPresenter {
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(BookCell.celID, forIndexPath: indexPath) as! BookCell
        let book: Book
        book = dataSource[indexPath.row] as! Book
        cell.renderWithBook(book)
        return cell
    }
    
}
