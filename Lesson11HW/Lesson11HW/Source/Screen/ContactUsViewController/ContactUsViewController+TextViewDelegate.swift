//
//  ContactUsViewController+TextViewDelegate.swift
//  Lesson11HW
//
//  Created by Алина Власенко on 28.03.2024.
//

import Foundation
import UIKit

extension ContactUsViewController: UITextViewDelegate {
    
    func setupTextViewDelegate() {
        contactUsContentView.contactUsTextView.delegate = self
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        
        let currentText = textView.text ?? ""
        
        // attempt to read the range they are trying to change, or exit if we can't
        guard let stringRange = Range(range, in: currentText) else { return false }
        
        // add their new text to the existing text
        let updatedText = currentText.replacingCharacters(in: stringRange, with: text)
        
        print("currentText: \(currentText)")
        print("updatedText: \(updatedText)")
        
        // update Indicator Label Value
        contactUsContentView.textViewCharacterCountIndicatorLabel.text = String(320 - currentText.count)
        
        // update Indicator Label Color
        if updatedText.count < 319 {
            contactUsContentView.textViewCharacterCountIndicatorLabel.textColor = .systemGreen
        } else if updatedText.count == 320 {
            contactUsContentView.textViewCharacterCountIndicatorLabel.textColor = .systemRed
        }
        
        // update button state
        if updatedText.count >= 15 {
            contactUsContentView.submitButton.isEnabled = true
        } else if currentText.count < 15 {
            contactUsContentView.submitButton.isEnabled = false
        }
        
        // update placeholderLabel
        if currentText.count == 0 {
            contactUsContentView.placeholderLabel.isHidden = false
        } else {
            contactUsContentView.placeholderLabel.isHidden = true
        }
        
        return updatedText.count <= 320
    }
}
