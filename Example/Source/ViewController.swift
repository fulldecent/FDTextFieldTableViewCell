//
//  ViewController.swift
//  FDTextFieldTableViewCell
//
//  Created by William Entriken on 2/3/16.
//  Copyright © 2016 William Entriken. All rights reserved.
//

import UIKit
import FDTextFieldTableViewCell

class ViewController: UITableViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch (indexPath as NSIndexPath).section {
        case 0:
            let cell = self.tableView.dequeueReusableCell(withIdentifier: "textField") as! FDTextFieldTableViewCell
            cell.textLabel!.text = "hi"
            cell.textField.text = "editMe"
            return cell
        default:
            let cell = self.tableView.dequeueReusableCell(withIdentifier: "basic")!
            cell.textLabel!.text = "hi"
            return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.view!.endEditing(true)
    }
}

extension ViewController /*: UIScrollViewDelegate*/ {
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        self.view!.endEditing(true)
    }
}
