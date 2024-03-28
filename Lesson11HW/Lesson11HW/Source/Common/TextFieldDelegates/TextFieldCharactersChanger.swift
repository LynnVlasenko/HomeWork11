//
//  TextFieldCharactersChanger.swift
//  Lesson11HW
//
//  Created by Алина Власенко on 27.03.2024.
//

import Foundation
import UIKit

protocol TextFieldCharactersChanger {
    
    // duplicating the function from UITextFieldDelegate - modifying it for own needs
    func textField(in textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
}
