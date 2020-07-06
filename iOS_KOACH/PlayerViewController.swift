//
//  ViewController.swift
//  iOS_KOACH
//
//  Created by Matthew Shin on 2019-08-02.
//  Copyright © 2019 KOACH. All rights reserved.
//

import UIKit
import SideMenu
import RealmSwift

class PlayerViewController: UIViewController {
    
    var playerMenu: SideMenuNavigationController?

    override func viewDidLoad() {
        super.viewDidLoad()
        playerMenu = SideMenuNavigationController(rootViewController: PlayerMenuController())
        playerMenu?.leftSide = true
        SideMenuManager.default.leftMenuNavigationController = playerMenu
        SideMenuManager.default.addScreenEdgePanGesturesToPresent(toView: self.view)
        
    }
}

class PlayerMenuController: UITableViewController {
    var players = ["Matthew", "Jay", "Hoon"]
    
    @IBAction func addPlayerButtonPressed(_ sender: UIButton) {
        
        var textField = UITextField()
        
        let alert = UIAlertController(title: "Add New Player", message: "Enter the name of the player", preferredStyle: .alert)
        let addAction = UIAlertAction(title: "Add Player", style: .default) { (addAction) in
            self.players.append(textField.text!)
            self.tableView.reloadData()
        }
        
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "John Doe"
            textField = alertTextField
        }
        
        alert.addAction(addAction)
        present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "playerCell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "playerCell", for: indexPath)
        cell.textLabel?.text = players[indexPath.row]
        return cell
    }
    
    
    
    
}

