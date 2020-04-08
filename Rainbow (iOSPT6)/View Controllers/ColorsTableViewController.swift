//
//  ColorsTableViewController.swift
//  Rainbow (iOSPT6)
//
//  Created by Jimmy Brown on 4/7/20.
//  Copyright © 2020 Jimmy Brown. All rights reserved.
//

import UIKit

class ColorsTableViewController: UITableViewController {
  
  // ROY G BIV
  var colors: [Color] = [
    Color(colorName: "Red", color: .red),
    Color(colorName: "Orange", color: .orange),
    Color(colorName: "Yellow", color: .yellow),
    Color(colorName: "Green", color: .green),
    Color(colorName: "Blue", color: .blue),
    Color(colorName: "Indigo", color: .cyan),
    Color(colorName: "Violet", color: .purple)
  ]
  
  // MARK: - Table view data source
  
  // This is required - How man rows should the table have?
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    // #warning Incomplete implementation, return the number of rows
    return colors.count
  }
  
  // This is also required - What data should each row contain
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)
    
    // Index Path (Section, Row)
    // (0, 0)
    // (0, 1)
    // (0, 2)...
    // 1. Get the current color for the row from my array of colors (Subscript Syntax)
    let color = colors[indexPath.row]
    cell.textLabel?.text = color.colorName
    cell.backgroundColor = color.color
    return cell
  }
  
  
    // MARK: - Navigation
  
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "ToDetailSegue" {
      if let detailVC = segue.destination as? ColorDetailViewController,
        let indexPath = self.tableView.indexPathForSelectedRow {
        detailVC.cellColor = colors[indexPath.row]
      }
    }
  }
}
