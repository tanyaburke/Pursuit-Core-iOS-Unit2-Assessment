//
//  ViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Alex Paul on 11/15/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var crayons = [Crayon](){
        didSet{
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        loadData()
    }
    func loadData(){
        crayons = Crayon.allTheCrayons
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
         print("prepare for segue")
        guard let settingsVC = segue.destination as? SettingsViewController,
            let indexPath = tableView.indexPathForSelectedRow else {
                fatalError("unable to connect to view controller")
        }
        let crayon = crayons[indexPath.row]
        settingsVC.crayonColor = crayon
    }
}



extension ViewController: UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return crayons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "crayonCell", for: indexPath)
        let color = crayons[indexPath.row]
        
        cell.textLabel?.text = color.name
        cell.detailTextLabel?.text = color.hex
        
        
        if color.name == "Black" {
            cell.textLabel?.textColor = .white
            cell.detailTextLabel?.textColor = .white
            
        }
        cell.backgroundColor = UIColor(red: CGFloat(color.red)/CGFloat(255), green: CGFloat(color.green)/CGFloat(255), blue: CGFloat(color.blue)/CGFloat(255), alpha: 1.0)
        return cell
    }
    
    
}

