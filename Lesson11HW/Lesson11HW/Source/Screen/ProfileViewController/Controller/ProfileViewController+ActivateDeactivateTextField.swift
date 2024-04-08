//
//  ProfileViewController+ActivateDeactivateTextField.swift
//  Lesson11HW
//
//  Created by Алина Власенко on 27.03.2024.
//

import Foundation

extension ProfileViewController {
    
    // MARK: - Text Field Activation
    func activateTextFields() {
        
        setupActivateDelegales()// важливо сетапити делегат саме в місці дії - інакше не працює
        activateDelegate?.modifyTextField(with: contentView.contentStackView.firstNameTextField)
        activateDelegate?.modifyTextField(with: contentView.contentStackView.lastNameTextField)
    }
    
    // MARK: - Text Field Deactivation
    func deactivateTextFields() {
        
        setupActivateDelegales()
        deactivateDelegate?.modifyTextField(with: contentView.contentStackView.firstNameTextField)
        deactivateDelegate?.modifyTextField(with: contentView.contentStackView.lastNameTextField)
    }
    
    // MARK: - Setup Text Field Activation/Deactivation Delegales
    func setupActivateDelegales() {
        
        activateDelegate = TextFieldActivateHandler()
        deactivateDelegate = TextFieldDeactivateHandler()
    }
}

