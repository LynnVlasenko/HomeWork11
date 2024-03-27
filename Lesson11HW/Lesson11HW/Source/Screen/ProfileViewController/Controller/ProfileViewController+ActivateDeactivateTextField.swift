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
        
        setupActivateDelegales() // важливо сетапити делегат саме в місці дії - інакше не працює
        firstNameActivateDelegate?.modifyTextField(with: contentView.contentStackView.firstNameTextField)
        lastNameActivateDelegate?.modifyTextField(with: contentView.contentStackView.lastNameTextField)
    }
    
    func setupActivateDelegales() {
        
        firstNameActivateDelegate = TextFieldActivateHandler()
        lastNameActivateDelegate = TextFieldActivateHandler()
    }
    
    
    // MARK: - Text Field Deactivation
    func deactivateTextFields() {
        
        setupDeactivateDelegales()
        firstNameDeactivateDelegate?.modifyTextField(with: contentView.contentStackView.firstNameTextField)
        lastNameDeactivateDelegate?.modifyTextField(with: contentView.contentStackView.lastNameTextField)
    }
    
    func setupDeactivateDelegales() {
        
        firstNameDeactivateDelegate = TextFieldDeactivateHandler()
        lastNameDeactivateDelegate = TextFieldDeactivateHandler()
    }
}

