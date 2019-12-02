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
    var textFieldSpy: UITextFieldSpy!
    
    override func setUp() {
        super.setUp()
        
        continueAfterFailure = false
        
        cell = FDTextFieldTableViewCell(
            style:.default,
            reuseIdentifier: "bob"
        )
        textFieldSpy = UITextFieldSpy()
        cell.textField  = textFieldSpy
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
    
    func testCanBeDecoded() {
        let coder = NSKeyedUnarchiver(forReadingWith: encodeView(cell))
        let decodedCell = FDTextFieldTableViewCell(coder: coder)
        
        XCTAssertNotNil(decodedCell)
    }
    
    func testAwakeFromNib() {
        cell.awakeFromNib()
        
        XCTAssertNotNil(cell)
    }
    
    func testTextFieldShouldBecomeFirstReponderOnTouch() {
        cell.touchesBegan([], with: nil)
        
        XCTAssertEqual(textFieldSpy.numberOfBecomeFirstResponderCalls, 1)
    }
    
    private func encodeView(_ cell: UIView) -> Data {
        let data = NSMutableData()
        let archiver = NSKeyedArchiver(forWritingWith: data)
        archiver.encodeRootObject(cell)
        return data as Data
    }
}

extension FDTextFieldTableViewCellTests {
    static var allTests = [
        ("testCanSubclass", testCanSubclass),
        ("testHasTextField", testHasTextField),
        ("testCanBeDecoded", testCanBeDecoded),
        ("testAwakeFromNib", testAwakeFromNib),
        ("testTextFieldShouldBecomeFirstReponderOnTouch", testTextFieldShouldBecomeFirstReponderOnTouch)
    ]
}
