//
//  TermsPrivacyViewController+ScrollViewDelegate.swift
//  Lesson11HW
//
//  Created by Алина Власенко on 28.03.2024.
//

import Foundation
import UIKit

extension TermsPrivacyViewController: UITextViewDelegate, UIScrollViewDelegate {
    
    func setupScrollViewDelegate() {
        termsPrivacyContentView.termsPrivacyTextView.delegate = self
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
        termsPrivacyContentView.agreeButton.isEnabled = scrollView.contentOffset.y + scrollView.bounds.height > scrollView.contentSize.height
        
        print("\(termsPrivacyContentView.agreeButton.isEnabled)")
    }
}
