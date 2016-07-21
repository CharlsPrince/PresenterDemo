//
//  BooksViewController.swift
//  PersenterDemo
//
//  Created by charls on 16/7/21.
//  Copyright © 2016年 Charls. All rights reserved.
//

import UIKit

class BooksViewController: UITableViewController {

    var presenter: BooksPresenter?
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "课本"
        
        presenter = BooksPresenter()
        presenter?.tableView = self.tableView
        presenter?.tableView?.delegate = presenter
        presenter?.tableView?.dataSource = presenter
        presenter?.fetchData()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
