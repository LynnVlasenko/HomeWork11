//
//  ProfileContentStackView.swift
//  Lesson11HW
//
//  Created by Алина Власенко on 26.03.2024.
//

import UIKit

class ProfileContentStackView: UIStackView {

    // MARK: - UI
    
    let firstNameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "First Name"
        textField.clearButtonMode = .whileEditing
        textField.backgroundColor = .white
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 50))
        textField.leftViewMode = .always
        return textField
    }()
    
    private let firstNameCharacterCountIndicatorLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .right
        label.font = .systemFont(ofSize: 17, weight: .regular)
        label.text = "30"
        return label
    }()
    
    let lastNameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Last Name"
        textField.clearButtonMode = .whileEditing
        textField.backgroundColor = .white
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 50))
        textField.leftViewMode = .always
        return textField
    }()

    private let lastNameCharacterCountIndicatorLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .right
        label.font = .systemFont(ofSize: 17, weight: .regular)
        label.text = "30"
        return label
    }()
    
    // MARK: - init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        //backgroundColor = .blue
        
        addSubviews()
        applyConstraints()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - private functions
    
    private func addSubviews() {
        [firstNameTextField, firstNameCharacterCountIndicatorLabel,
         lastNameTextField, lastNameCharacterCountIndicatorLabel]
            .forEach { self.addArrangedSubview($0) }
    }
    
    private func applyConstraints() {
        
        [firstNameTextField, firstNameCharacterCountIndicatorLabel,
         lastNameTextField, lastNameCharacterCountIndicatorLabel]
            .forEach { $0.translatesAutoresizingMaskIntoConstraints = false }
        
        [firstNameTextField, lastNameTextField]
            .forEach { $0.heightAnchor.constraint(equalToConstant: 50).isActive = true }
        
        let labelsConstraints = [
            firstNameCharacterCountIndicatorLabel.heightAnchor.constraint(equalToConstant: 20),
            firstNameCharacterCountIndicatorLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            lastNameCharacterCountIndicatorLabel.heightAnchor.constraint(equalToConstant: 20),
            lastNameCharacterCountIndicatorLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ]
        
        NSLayoutConstraint.activate(labelsConstraints)

    }

}
