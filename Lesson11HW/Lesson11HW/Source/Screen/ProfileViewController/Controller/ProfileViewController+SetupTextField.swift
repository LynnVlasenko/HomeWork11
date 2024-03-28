//
//  ProfileViewController+SetupTextField.swift
//  Lesson11HW
//
//  Created by Алина Власенко on 27.03.2024.
//

import Foundation
import UIKit

extension ProfileViewController {
    
    // MARK: - Setup Text Field
    
    func setupFirstNameTextField() {
        firstNameTextFieldDelegate.textDelegate = self
        firstNameTextFieldDelegate.setup(with: contentView.contentStackView.firstNameTextField)
    }
    
    func setupLastNameTextField() {
        
        lastNameTextFieldDelegate.setup(with: contentView.contentStackView.lastNameTextField)
        lastNameTextFieldDelegate.textDelegate = self
    }
}

extension ProfileViewController: TextFieldCharactersChanger {
    
    func textField(in textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let currentText = textField.text ?? ""

        // attempt to read the range they are trying to change, or exit if we can't
        guard let stringRange = Range(range, in: currentText) else { return false }

        // add their new text to the existing text
        let updatedText = currentText.replacingCharacters(in: stringRange, with: string)
        
        print("currentText: \(currentText)")
        print("updatedText: \(updatedText)")
        
        if textField == contentView.contentStackView.firstNameTextField {
            contentView.contentStackView.firstNameCharacterCountIndicatorLabel.text = String(30 - currentText.count)

            if updatedText.count < 29 {
                contentView.contentStackView.firstNameCharacterCountIndicatorLabel.textColor = .systemGreen
            } else if updatedText.count == 30 {
                contentView.contentStackView.firstNameCharacterCountIndicatorLabel.textColor = .systemRed
            }
            
        } else if textField == contentView.contentStackView.lastNameTextField {
            contentView.contentStackView.lastNameCharacterCountIndicatorLabel.text = String(30 - currentText.count)
            
             if updatedText.count < 29 {
                contentView.contentStackView.lastNameCharacterCountIndicatorLabel.textColor = .systemGreen
            } else if updatedText.count == 30 {
                contentView.contentStackView.lastNameCharacterCountIndicatorLabel.textColor = .systemRed
            }
        }
        return updatedText.count <= 30
    }
}
