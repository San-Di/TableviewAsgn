//
//  ViewController.swift
//  W2TableViewAsgn
//
//  Created by Sandi on 8/10/19.
//  Copyright © 2019 Sandi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    static let identifier = "ProfileTableViewController"
    @IBOutlet weak var tblProfileList: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tblProfileList.dataSource = self
       let nib = UINib(nibName: ProfileTableViewCell.identifier, bundle: nil)
        tblProfileList.register(nib, forCellReuseIdentifier: ProfileTableViewCell.identifier)
        tblProfileList.contentInset = UIEdgeInsets(top: 2, left: 0, bottom: 14, right: 0)
    }

}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblProfileList.dequeueReusableCell(withIdentifier: ProfileTableViewCell.identifier, for: indexPath) as! ProfileTableViewCell
        
        return cell
    }
    
    
}

