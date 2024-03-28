//
//  ProfileViewController.swift
//  Lesson11HW
//

//

import UIKit

class ProfileViewController: BaseViewController {
    
    // add view
    let contentView = ProfileConentView()
    
    // edit mode state
    private var editMode = false
    
    // create delegates to activate/deactivate TextField
    var firstNameActivateDelegate: TextFieldDelegate?
    var lastNameActivateDelegate: TextFieldDelegate?
    var firstNameDeactivateDelegate: TextFieldDelegate?
    var lastNameDeactivateDelegate: TextFieldDelegate?
    
    // create delegates to setup TextField
    let firstNameTextFieldDelegate = TextFieldChangeCharactersDelegate()
    let lastNameTextFieldDelegate = TextFieldChangeCharactersDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // setup UI Elements
        addSubviews()
        applyConstraints()
        
        // setup actions for edit mode
        setupActions()
        
        // setup TextField Delegates
        setupDelegates()
    }
    
    // MARK: - Setup UI Elements
    
    private func addSubviews() {
        view.addSubview(contentView)
    }
    
    private func applyConstraints() {
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        let contentViewConstraints = [
            contentView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            contentView.widthAnchor.constraint(equalTo: view.widthAnchor),
            contentView.heightAnchor.constraint(equalToConstant: 155)
        ]
        
        NSLayoutConstraint.activate(contentViewConstraints)
    }
    
    // MARK: - Setup TextField Delegates
    
    func setupDelegates() {

        setupLastNameTextField()
        setupFirstNameTextField()
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
            turnOffIndicatorLabel()
        } else {
            activateTextFields()
            turnOnIndicatorLabel()
        }
    }
    
    @objc func changeModeButtonDidTap() {
        debugPrint("ProfileViewController -> changeModeButtonDidTap")
        
        editMode = !editMode
        updateRigthtBarButton()
    }
    
    //MARK: - UI Changers for editMode
    
    func turnOnIndicatorLabel() {
        contentView.contentStackView.firstNameCharacterCountIndicatorLabel.isHidden = false
        contentView.contentStackView.lastNameCharacterCountIndicatorLabel.isHidden = false
        contentView.contentStackView.spacing = 5
    }
    
    func turnOffIndicatorLabel() {
        contentView.contentStackView.firstNameCharacterCountIndicatorLabel.isHidden = true
        contentView.contentStackView.lastNameCharacterCountIndicatorLabel.isHidden = true
        contentView.contentStackView.spacing = 30
    }
}
