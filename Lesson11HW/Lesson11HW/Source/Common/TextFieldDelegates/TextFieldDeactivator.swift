//
//  TextFieldDeactivator.swift
//  Lesson11HW
//
//  Created by Алина Власенко on 27.03.2024.
//

import Foundation
import UIKit

protocol TextFieldDeactivator: AnyObject {
    
    func deactivateTextField(with textField: UITextField)
}
