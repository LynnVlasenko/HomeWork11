//
//  TermsPrivacyViewController.swift
//  Lesson11HW
//

//

import UIKit

class TermsPrivacyViewController: BaseViewController {
    
    // add view
    let termsPrivacyContentView = TermsPrivacyView()
    
    // MARK: - override
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSubviews()
        applyConstraints()
        setupScrollViewDelegate()
    }
    
    // MARK: - private
    private func addSubviews() {
        view.addSubview(termsPrivacyContentView)
    }
    
    private func applyConstraints() {
        termsPrivacyContentView.translatesAutoresizingMaskIntoConstraints = false
        
        let contentViewConstraints = [
            termsPrivacyContentView.widthAnchor.constraint(equalTo: view.widthAnchor),
            termsPrivacyContentView.heightAnchor.constraint(equalTo: view.heightAnchor)
        ]
        
        NSLayoutConstraint.activate(contentViewConstraints)
    }
}
