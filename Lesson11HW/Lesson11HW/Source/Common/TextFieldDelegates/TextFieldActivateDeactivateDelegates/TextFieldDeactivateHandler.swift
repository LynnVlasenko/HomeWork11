//
//  TextFieldDeactivateHandler.swift
//  Lesson11HW
//
//  Created by Алина Власенко on 27.03.2024.
//

import Foundation
import UIKit

class TextFieldDeactivateHandler: TextFieldDelegate {
    
    func modifyTextField(with textField: UITextField) {
        textField.isUserInteractionEnabled = false
    }
}
