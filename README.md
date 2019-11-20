FDTextFieldTableViewCell
================

[![CI Status](http://img.shields.io/travis/fulldecent/FDTextFieldTableViewCell.svg?style=flat)](https://travis-ci.org/fulldecent/FDTextFieldTableViewCell)
[![Version](https://img.shields.io/cocoapods/v/FDTextFieldTableViewCell.svg?style=flat)](http://cocoadocs.org/docsets/FDTextFieldTableViewCell)
[![License](https://img.shields.io/cocoapods/l/FDTextFieldTableViewCell.svg?style=flat)](http://cocoadocs.org/docsets/FDTextFieldTableViewCell)
[![Platform](https://img.shields.io/cocoapods/p/FDTextFieldTableViewCell.svg?style=flat)](http://cocoadocs.org/docsets/FDTextFieldTableViewCell)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

<a href="http://i.imgur.com/oXMLOrk.png"><img src="http://i.imgur.com/oXMLOrk.png" title="Hosted by imgur.com" /></a>


Features
========

 * Fully featured like the Right Detail style
 * Adds a UITextField to the cell and places it correctly


Usage
=====

Select a cell in your storyboard and use the inspector to change the Custom Class to `FDTextFieldTableViewCell`.

Switch to the attributes inspector and set the style to Right Detail.

In your `UITableViewController` subclass, do something like:

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("textField") as! FDTextFieldTableViewCell
        cell.textLabel!.text = "hi"
        cell.textField.text = "editMe"
        return cell
    }


Installation
============

## Installation

Add this to your project using Swift Package Manager. In Xcode that is simply: File > Swift Packages > Add Package Dependency... and you're done. Alternative installations options are shown below for legacy projects.

### CocoaPods

If you are already using [CocoaPods](http://cocoapods.org), just add 'FDTextFieldTableViewCell' to your `Podfile` then run `pod install`.

### Carthage

If you are already using [Carthage](https://github.com/Carthage/Carthage), just add to your `Cartfile`:

```ogdl
github "fulldecent/FDTextFieldTableViewCell"
```

Then run `carthage update` to build the framework and drag the built `FDTextFieldTableViewCell`.framework into your Xcode project.
