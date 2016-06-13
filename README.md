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

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

> CocoaPods 0.39.0+ is required to build FDTextFieldTableViewCell 0.1.0+.

To integrate FDTextFieldTableViewCell into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'
use_frameworks!

pod 'FDTextFieldTableViewCell', '~> 0.1'
```

Then, run the following command:

```bash
$ pod install
```

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks.

You can install Carthage with [Homebrew](http://brew.sh/) using the following command:

```bash
$ brew update
$ brew install carthage
```

To integrate FDTextFieldTableViewCell into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "fulldecent/FDTextFieldTableViewCell"
```

Run `carthage update` to build the framework and drag the built `FDTextFieldTableViewCell.framework` into your Xcode project.
