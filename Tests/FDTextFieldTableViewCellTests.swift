//
//  FDTextFieldTableViewCell.swift
//  FDTextFieldTableViewCell
//
//  Created by William Entriken on 4/25/16.
//  Copyright © 2016 William Entriken. All rights reserved.
//

import XCTest
@testable import FDTextFieldTableViewCell

class FDTextFieldTableViewCellTests: XCTestCase {
    var cell: FDTextFieldTableViewCell!
    
    override func setUp() {
        super.setUp()
        cell = FDTextFieldTableViewCell(style:.default, reuseIdentifier: "bob")
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        XCTAssert(true)
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testCanSubclass() {
        class Bob: FDTextFieldTableViewCell {
        }
        XCTAssert(true)
    }
    
    func testHasTextField() {
        let _ = cell.textField
        XCTAssert(true)
    }
}
