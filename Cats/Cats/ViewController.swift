//
//  ViewController.swift
//  Cats
//
//  Created by Michael Dippery on 7/16/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    let catBreeds: [String] = ["Abyssinian", "Bengal", "Birman", "British Shorthair", "Burmese", "Exotic Shorthair", "Maine Coon", "Persian", "Ragdoll", "Norwegian Forest", "American Shorthair", "Scotish Shorthair"]
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return catBreeds.count
    }
   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "KittyCell", for: indexPath)
        
        let catName = catBreeds[indexPath.row]
        
        cell.textLabel?.text = catName
        
        return cell
        
    }
    
}
