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
        firstNameActivateDelegate?.activateTextField(with: contentView.contentStackView.firstNameTextField)
        lastNameActivateDelegate?.activateTextField(with: contentView.contentStackView.lastNameTextField)
    }
    
    func setupActivateDelegales() {
        
        firstNameActivateDelegate = TextFieldActivateHandler()
        lastNameActivateDelegate = TextFieldActivateHandler()
    }
    
    
    // MARK: - Text Field Deactivation
    func deactivateTextFields() {
        
        setupDeactivateDelegales()
        firstNameDeactivateDelegate?.deactivateTextField(with: contentView.contentStackView.firstNameTextField)
        lastNameDeactivateDelegate?.deactivateTextField(with: contentView.contentStackView.lastNameTextField)
    }
    
    func setupDeactivateDelegales() {
        
        firstNameDeactivateDelegate = TextFieldDeactivateHandler()
        lastNameDeactivateDelegate = TextFieldDeactivateHandler()
    }
}

