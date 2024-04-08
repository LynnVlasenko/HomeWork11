//
//  TextFieldSetupCharactersLimitUpTo320.swift
//  Lesson11HW
//
//  Created by Алина Власенко on 08.04.2024.
//

import UIKit

class TextFieldSetupCharactersLimitUpTo320: TextFieldSetupLimitDelegate {
    
    func setupLimit(with characters: Int, label: UILabel) {
        
        if characters >= 320 {
            label.text = "\(320 - characters)"
            label.textColor = .red
        } else {
            label.text = "\(320 - characters)"
            label.textColor = .green
        }
    }
}
