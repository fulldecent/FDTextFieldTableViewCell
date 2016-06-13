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
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = self.tableView.dequeueReusableCellWithIdentifier("textField") as! FDTextFieldTableViewCell
            cell.textLabel!.text = "hi"
            cell.textField.text = "editMe"
            return cell
        default:
            let cell = self.tableView.dequeueReusableCellWithIdentifier("basic")!
            cell.textLabel!.text = "hi"
            return cell
        }
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.view!.endEditing(true)
    }
}

extension ViewController /*: UIScrollViewDelegate*/ {
    override func scrollViewDidScroll(scrollView: UIScrollView) {
        self.view!.endEditing(true)
    }
}
