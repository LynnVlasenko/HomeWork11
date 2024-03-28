//
//  TextFieldChangeCharactersDelegate.swift
//  Lesson11HW
//
//  Created by Алина Власенко on 27.03.2024.
//

import Foundation
import UIKit

class TextFieldChangeCharactersDelegate: NSObject {
    
    // add delegat - protocol
    var textDelegate: TextFieldCharactersChanger?
    
    // taking the value of a certain text field
    func setup(with textField: UITextField) {
        textField.delegate = self
    }
}

extension TextFieldChangeCharactersDelegate: UITextFieldDelegate {
    
    // implementation the function from the protocol, adding it to the native function of UITextFieldDelegate
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if let textDelegate = textDelegate {
            return textDelegate.textField(in: textField, shouldChangeCharactersIn: range, replacementString: string)
        }
        return true
    }
}
