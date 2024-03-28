//
//  ProfileConentView.swift
//  Lesson11HW
//
//  Created by Алина Власенко on 26.03.2024.
//

import UIKit

class ProfileConentView: UIView {
    
    // MARK: - UI
    
    let contentStackView = ProfileContentStackView() // add stack view
    
    // MARK: - init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupScrollView()
        applyConstraints()
    }
    
    required init? (coder: NSCoder) {
        fatalError()
    }
    
    // MARK: - private functions
    
    private func setupScrollView() {
        contentStackView.axis = .vertical
        contentStackView.alignment = .fill
        contentStackView.distribution = .fill
        contentStackView.spacing = 5
        contentStackView.contentMode = .scaleToFill
        contentStackView.isLayoutMarginsRelativeArrangement = true
        //contentStackView.firstNameCharacterCountIndicatorLabel.layoutMargins.right = 20
        addSubview(contentStackView)
    }

    private func applyConstraints() {
        
        contentStackView.translatesAutoresizingMaskIntoConstraints = false
        
        let scrollViewConstraints = [
            contentStackView.widthAnchor.constraint(equalTo: widthAnchor)
        ]
        
        NSLayoutConstraint.activate(scrollViewConstraints)
    }
}
