//
//  ViewController.swift
//  TableViewTest
//
//  Created by Christine Kim on 10/5/16.
//  Copyright © 2016 Event Farm. All rights reserved.
//

import UIKit

protocol MyDelegate: class {
    func userLoggedOut()
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    weak var delegate: MyDelegate?

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "GreenCell") as? GreenTableViewCell else {
            
            fatalError("This doesn't work!!!")
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.item == 0 {
            view.backgroundColor = UIColor.white
        }
        else if indexPath.item == 1 {
            view.backgroundColor = UIColor.blue
        }
        else if indexPath.item == 2 {
            view.backgroundColor = UIColor.red
        }
    }
}



