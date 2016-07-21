//
//  ViewController.swift
//  PersenterDemo
//
//  Created by charls on 16/7/21.
//  Copyright © 2016年 Charls. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var nav: UINavigationController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.title = "根视图"
        
        for index in 0..<2 {
            let button = UIButton(type: .Custom)
            button.backgroundColor = UIColor.purpleColor()
            button.setTitle("按钮\(index)", forState: .Normal)
            button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
            button.tag = 1000+index
            button.addTarget(self, action: #selector(buttonClicked(_:)), forControlEvents: .TouchUpInside)
            button.frame = CGRectMake(100, 100+100*CGFloat(index), 80, 60)
            self.view.addSubview(button)
        }
        
        nav = self.navigationController
        
    }

    @objc private func buttonClicked(sender: UIButton) {
        
        
        
        if sender.tag == 1000 {
            let notesVC = NotesViewController()
            nav.pushViewController(notesVC, animated: true)
        } else {
            let booksVC = BooksViewController()
            nav.pushViewController(booksVC, animated: true)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

