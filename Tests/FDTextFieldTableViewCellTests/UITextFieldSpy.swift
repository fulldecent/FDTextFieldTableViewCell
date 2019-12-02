//
//  File.swift
//  
//
//  Created by Yaroslav Zhurakovskiy on 02.12.2019.
//

import UIKit

class UITextFieldSpy: UITextField {
    var numberOfBecomeFirstResponderCalls = 0
    
    override func becomeFirstResponder() -> Bool {
        numberOfBecomeFirstResponderCalls += 1
        
        return super.becomeFirstResponder()
    }
}
