//
//  NotesAndBooksPresenter.swift
//  PersenterDemo
//
//  Created by charls on 16/7/21.
//  Copyright © 2016年 Charls. All rights reserved.
//

import Foundation
import UIKit

protocol NotesAndBooksPresentable: UITableViewDelegate,UITableViewDataSource {
    
    weak var viewController: UIViewController? { get set }
    weak var tableView: UITableView? { get set }
    
    var dataSource: [NotesAndBooksDataModel] { get set }
    var searchResult: [NotesAndBooksDataModel] { get set }
    
    var seachKeyword: String { get set }
    
}

protocol NotesAndBooksDataModel {
}

class NotesAndBooksListInteractor: NSObject, NotesAndBooksPresentable {
    
    weak var viewController: UIViewController?
    weak var tableView: UITableView? {
        didSet {
            tableView?.keyboardDismissMode = .OnDrag
        }
    }
    
    var dataSource: [NotesAndBooksDataModel] = []
    var searchResult: [NotesAndBooksDataModel] = []
    
    var seachKeyword: String = ""
    
    // 获取数据
    func fetchData() {}
    
}

extension NotesAndBooksListInteractor {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    // 子类重写
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
}

extension NotesAndBooksListInteractor {
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 100.0
    }
    
}