//
//  TextFieldDelegate.swift
//  Lesson11HW
//
//  Created by Алина Власенко on 27.03.2024.
//

import Foundation
import UIKit

protocol TextFieldDelegate: AnyObject {
    
    func modifyTextField(with textField: UITextField)
}
