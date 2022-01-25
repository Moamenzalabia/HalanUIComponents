//
//  HalanButton+Loading.swift
//  HalanUIComponents
//
//  Created by Moamen Abd Elgawad on 25/01/2022.
//

import UIKit
/// This is the extension used to set the HalanButton Loader.
extension HalanButton {
    /**
     Show a loader inside the button, and enable or disable user interection while loading
     */
    public func showLoader(userInteraction: Bool = true){
        originalButtonText = titleLabel?.text
        guard self.subviews.contains(activityIndicator) == false else {
            return
        }
        isLoading = true
        isUserInteractionEnabled = userInteraction
        UIView.transition(with: self, duration: 0.5, options: .curveEaseOut, animations: { [weak self] in
            guard let self = self else {
                return
            }
            self.setTitle("", for: .normal)
        }) { [weak self] (finished) in
            guard let self = self else {
                return
            }
            self.addSubview(self.activityIndicator)
            self.activityIndicator.startAnimating()
        }
    }
    
    /**
     hide a loader inside the button, and enable user interection
     */
    public func hideLoader(){
        guard self.subviews.contains(activityIndicator) == true else {
            return
        }
        isLoading = false
        isUserInteractionEnabled = true
        UIView.transition(with: self, duration: 0.5, options: .curveEaseIn, animations: { [weak self] in
            guard let self = self else {
                return
            }
            self.setTitle(self.originalButtonText, for: .normal)
        }) { [weak self] (finished) in
            guard let self = self else {
                return
            }
            self.activityIndicator.stopAnimating()
            self.activityIndicator.removeFromSuperview()
        }
    }
}
