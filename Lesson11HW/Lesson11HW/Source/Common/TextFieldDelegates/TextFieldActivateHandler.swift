//
//  TextFieldActivateHandler.swift
//  Lesson11HW
//
//  Created by Алина Власенко on 27.03.2024.
//

import Foundation
import UIKit

class TextFieldActivateHandler: TextFieldActivator {
    
    func activateTextField(with textField: UITextField) {
        textField.isUserInteractionEnabled = true
    }
}
