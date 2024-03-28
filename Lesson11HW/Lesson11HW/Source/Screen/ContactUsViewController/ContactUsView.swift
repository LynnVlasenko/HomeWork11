//
//  ContactUsView.swift
//  Lesson11HW
//
//  Created by Алина Власенко on 28.03.2024.
//

import UIKit

class ContactUsView: UIView {

    // MARK: - UI
    let contactUsTextView: UITextView = {
        let textView = UITextView()
        textView.text = ""
        textView.font = .systemFont(ofSize: 17, weight: .regular)
        textView.contentInset = UIEdgeInsets(top: 20, left: 16, bottom: 16, right: 16)
        textView.layer.cornerRadius = 15
        return textView
    }()
    
    let placeholderLabel: UILabel = {
        let label = UILabel()
        label.text = "type here"
        label.textColor = .systemGray
        label.font = .systemFont(ofSize: 17, weight: .regular)
        return label
    }()
    
    var textViewCharacterCountIndicatorLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .right
        label.font = .systemFont(ofSize: 17, weight: .regular)
        label.text = "320"
        label.textColor = .systemGreen
        return label
    }()
    
    let submitButton: UIButton = {
        let button = UIButton()
        button.setTitle("Submit", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.systemBlue, for: .normal)
        button.setTitleColor(.systemGray, for: .disabled)
        button.layer.borderColor = UIColor.lightGray.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 15
        button.isEnabled = false
        button.addTarget(self, action: #selector(didTabToSubmitButton), for: .touchUpInside)
        return button
    }()
    // MARK: - init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubviews()
        applyConstraints()
    }
    
    required init? (coder: NSCoder) {
        fatalError()
    }

    // MARK: - private
    
    @objc private func didTabToSubmitButton() {
        print("Submit")
    }
    
    private func addSubviews() {
        addSubview(contactUsTextView)
        contactUsTextView.addSubview(placeholderLabel)
        addSubview(submitButton)
        addSubview(textViewCharacterCountIndicatorLabel)
    }
    
    private func applyConstraints() {
        
        [contactUsTextView, submitButton, placeholderLabel, textViewCharacterCountIndicatorLabel]
            .forEach { $0.translatesAutoresizingMaskIntoConstraints = false}
        
        let contactUsTextViewConstraints = [
            contactUsTextView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            contactUsTextView.centerXAnchor.constraint(equalTo: centerXAnchor),
            contactUsTextView.heightAnchor.constraint(equalToConstant: 220),
            contactUsTextView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.8)
        ]
        
        let placeholderLabelConstraints = [
            placeholderLabel.topAnchor.constraint(equalTo: contactUsTextView.topAnchor, constant: 8),
            placeholderLabel.leftAnchor.constraint(equalTo: contactUsTextView.leftAnchor, constant: 8)
        ]
        
        let textViewCharacterCountIndicatorLabelConstraints = [
            textViewCharacterCountIndicatorLabel.topAnchor.constraint(equalTo: contactUsTextView.bottomAnchor, constant: 5),
            textViewCharacterCountIndicatorLabel.heightAnchor.constraint(equalToConstant: 20),
            textViewCharacterCountIndicatorLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.8)
        ]
        
        let submitButtonConstraints = [
            submitButton.topAnchor.constraint(equalTo: textViewCharacterCountIndicatorLabel.bottomAnchor, constant: 15),
            submitButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            submitButton.heightAnchor.constraint(equalToConstant: 50),
            submitButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.6)
        ]
        
        [contactUsTextViewConstraints, submitButtonConstraints, placeholderLabelConstraints, textViewCharacterCountIndicatorLabelConstraints]
            .forEach { NSLayoutConstraint.activate($0) }
    }
}
