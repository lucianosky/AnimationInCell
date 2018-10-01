//
//  MyTableViewController.swift
//  AnimationInCell
//
//  Created by Luciano Sclovsky on 24/09/2018.
//  Copyright © 2018 Luciano Sclovsky. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {

    @IBOutlet weak var daliImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.separatorStyle = UITableViewCellSeparatorStyle.none
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "AnimatedTableViewCell", for: indexPath) as! AnimatedTableViewCell
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "BasicTableViewCell", for: indexPath)
            let name: String
            switch indexPath.row {
            case 0: name = "Tokyo"
            case 1: name = "Rio"
            case 3: name = "Professor"
            default: name = "Raquel"
            }
            cell.textLabel?.text = name
            return cell
        }
    }

    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return indexPath.row == 2 ? 315 : 44
    }
    
}
