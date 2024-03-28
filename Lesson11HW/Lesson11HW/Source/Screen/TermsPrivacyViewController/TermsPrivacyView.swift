//
//  TermsPrivacyView.swift
//  Lesson11HW
//
//  Created by Алина Власенко on 28.03.2024.
//

import UIKit

class TermsPrivacyView: UIView {
    
    // MARK: - UI
    let termsPrivacyTextView: UITextView = {
        let textView = UITextView()
        textView.text = "What is Lorem Ipsum? \n\n Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. \n\n Where does it come from? \n\n Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32. \n\n The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham."
        textView.font = .systemFont(ofSize: 17, weight: .medium)
        textView.textAlignment = .justified
        textView.isEditable = false
        textView.isScrollEnabled = true
        textView.contentInset = UIEdgeInsets(top: 20, left: 16, bottom: 16, right: 16)
        return textView
    }()
    
    let agreeButton: UIButton = {
        let button = UIButton()
        button.setTitle("I Agree", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.systemBlue, for: .normal)
        button.setTitleColor(.systemGray, for: .disabled)
        button.layer.borderColor = UIColor.lightGray.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 15
        button.isEnabled = false
        button.addTarget(self, action: #selector(didTabToAgreeButton), for: .touchUpInside)
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
    
    @objc private func didTabToAgreeButton() {
        print("I Agree")
    }
    
    private func addSubviews() {
        addSubview(termsPrivacyTextView)
        addSubview(agreeButton)
    }
    
    private func applyConstraints() {
        
        [termsPrivacyTextView, agreeButton].forEach { $0.translatesAutoresizingMaskIntoConstraints = false }
        
        let termsPrivacyTextViewConstraints = [
            termsPrivacyTextView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            termsPrivacyTextView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.7),
            termsPrivacyTextView.widthAnchor.constraint(equalTo: widthAnchor)
        ]
        
        let agreeButtonConstraints = [
            agreeButton.topAnchor.constraint(equalTo: termsPrivacyTextView.bottomAnchor, constant: 40),
            agreeButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            agreeButton.heightAnchor.constraint(equalToConstant: 50),
            agreeButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.6)
        ]
        
        [termsPrivacyTextViewConstraints, agreeButtonConstraints].forEach { NSLayoutConstraint.activate($0) }
    }
}
