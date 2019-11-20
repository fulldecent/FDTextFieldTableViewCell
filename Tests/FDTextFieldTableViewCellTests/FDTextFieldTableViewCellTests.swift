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

extension FDTextFieldTableViewCellTests {
    static var allTests = [
        ("testCanSubclass", testCanSubclass),
        ("testHasTextField", testHasTextField)
    ]
}
