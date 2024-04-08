//
//  TextFieldSetupCharactersLimitUpTo30.swift
//  Lesson11HW
//
//  Created by Алина Власенко on 08.04.2024.
//

import UIKit

class TextFieldSetupCharactersLimitUpTo30: TextFieldSetupLimitDelegate {
    
    func setupLimit(with characters: Int, label: UILabel) {
        
        if characters >= 30 {
            label.text = "\(30 - characters)"
            label.textColor = .red
        } else {
            label.text = "\(30 - characters)"
            label.textColor = .green
        }
    }
}
