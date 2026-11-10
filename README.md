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

## Releases

Use `fix:`, `feat:`, or `BREAKING CHANGE:` prefixes in commit messages. [Release Please](https://github.com/googleapis/release-please) opens a release pull request from those commits. Merging that pull request publishes a tag and a GitHub Release. The git tag is what Swift Package Manager installs.

GitHub Actions needs permission to open pull requests.

If you are adopting this from an existing project and the first Release Please pull request gets the version wrong, check the Release Please documentation. You may need a configuration option when tags have no v prefix, and for other situations.

## References

This repository is built on [swift-module-template](https://github.com/fulldecent/swift-module-template) v16.6.0 and [project-template](https://github.com/fulldecent/project-template) v1.4.1. The published build is an Apple-platform library, not the template's Linux static library.
