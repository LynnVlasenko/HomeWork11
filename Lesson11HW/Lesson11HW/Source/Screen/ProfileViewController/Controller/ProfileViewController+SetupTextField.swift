//
//  ProfileViewController+SetupTextField.swift
//  Lesson11HW
//
//  Created by Алина Власенко on 27.03.2024.
//

import UIKit

extension ProfileViewController: UITextFieldDelegate {
    
    // MARK: - Setup Text Field Limit Up To 30 Delegales
    func setupLimitUpTo30Delegales() {
        textFieldSetupCharactersLimitUpTo30Delegate = TextFieldSetupCharactersLimitUpTo30()
    }
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        setupLimitUpTo30Delegales() // setup delegates
       
        // attempt to read the range they are trying to change, or exit if we can't
        guard let currentText = textField.text, let stringRange = Range(range, in: currentText) else { return false }
        
        // add their new text to the existing text
        let updatedText = currentText.replacingCharacters(in: stringRange, with: string)
        
        print("currentText: \(currentText)")
        print("updatedText: \(updatedText)")
        
        if textField == contentView.contentStackView.firstNameTextField {
            textFieldSetupCharactersLimitUpTo30Delegate?.setupLimit(with: currentText.count, label: contentView.contentStackView.firstNameCharacterCountIndicatorLabel)
        } else if textField == contentView.contentStackView.lastNameTextField {
            textFieldSetupCharactersLimitUpTo30Delegate?.setupLimit(with: currentText.count, label: contentView.contentStackView.lastNameCharacterCountIndicatorLabel)
        }
        
        return updatedText.count <= 30
    }
}
