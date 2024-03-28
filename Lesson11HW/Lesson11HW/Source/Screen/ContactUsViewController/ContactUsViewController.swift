//
//  ContactUsViewController.swift
//  Lesson11HW
//

//

import UIKit

class ContactUsViewController: BaseViewController {
    
    // add view
    let contactUsContentView = ContactUsView()
    
    // MARK: - override
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSubviews()
        applyConstraints()
    }
    
    // MARK: - private
    private func addSubviews() {
        view.addSubview(contactUsContentView)
    }
    
    private func applyConstraints() {
        contactUsContentView.translatesAutoresizingMaskIntoConstraints = false
        
        let contactUsContentViewConstraints = [
            contactUsContentView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            contactUsContentView.widthAnchor.constraint(equalTo: view.widthAnchor),
            contactUsContentView.heightAnchor.constraint(equalToConstant: 350)
        ]
        
        NSLayoutConstraint.activate(contactUsContentViewConstraints)
    }
}

