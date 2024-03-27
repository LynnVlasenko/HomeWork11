//
//  ProfileViewController.swift
//  Lesson11HW
//

//

import UIKit

class ProfileViewController: BaseViewController {
    
    let contentView = ProfileConentView() // add view
    
    // create delegates
    var firstNameActivateDelegate: TextFieldDelegate?
    var lastNameActivateDelegate: TextFieldDelegate?
    var firstNameDeactivateDelegate: TextFieldDelegate?
    var lastNameDeactivateDelegate: TextFieldDelegate?
    
    private var editMode = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSubviews()
        applyConstraints()
        setupActions()
    }
    
    // MARK: - Setup UI Elements
    
    private func addSubviews() {
        view.addSubview(contentView)
    }
    
    private func applyConstraints() {
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        let contentViewConstraints = [
            contentView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            contentView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            contentView.widthAnchor.constraint(equalTo: view.widthAnchor),
            contentView.heightAnchor.constraint(equalToConstant: 200) // чомусь не спрацьовує висота сабвьюшки
        ]
        
        NSLayoutConstraint.activate(contentViewConstraints)
    }
}

// MARK: - Private
private extension ProfileViewController {
    
    func setupActions() {
        updateRigthtBarButton()
    }
    
    func updateRigthtBarButton() {
        
        let title = editMode ? "Done" : "Edit"

        let barButton = UIBarButtonItem(
            title: title,
            style: .plain,
            target: self,
            action: #selector(changeModeButtonDidTap)
        )
        
        navigationItem.rightBarButtonItem = barButton
        
        if !editMode {
            deactivateTextFields()
        } else {
            activateTextFields()
        }
    }
    
    @objc func changeModeButtonDidTap() {
        debugPrint("ProfileViewController -> changeModeButtonDidTap")
        
        editMode = !editMode
        updateRigthtBarButton()
    }
}
