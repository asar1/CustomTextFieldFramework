//
//  extension.swift
//  CustomTextFieldExample
//
//  Created by Muhammad Mudassar Yasin on 14/09/2022.
//

import Foundation
import UIKit

@IBDesignable
public class CustomTextfield: UITextField {
    
    @IBInspectable var leftPadding: CGFloat {
        get {
            return leftView?.frame.size.width ?? 0
        }
        set {
            let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: newValue, height: frame.size.height))
            if leftView == nil {
                leftView = paddingView
                leftViewMode = .always
            }
            
        }
    }
    
    @IBInspectable var rightPadding: CGFloat {
        get {
            return rightView?.frame.size.width ?? 0
        }
        set {
            let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: newValue, height: frame.size.height))
            if rightView == nil {
                rightView = paddingView
                rightViewMode = .always
            }
            
        }
    }
}

@IBDesignable
extension UIView {
    @IBInspectable var bgColor: UIColor {
        set {
            self.backgroundColor = newValue
        }
        get {
            return self.bgColor
        }
    }
    
    @IBInspectable
    var makeCircle: Bool {
        get {
            return self.layer.cornerRadius > 0
        }
        set {
            if newValue == true {
                self.layer.cornerRadius = self.layer.frame.height / 2
            }
        }
    }
    
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
    
    @IBInspectable
    var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable
    var borderColor: UIColor? {
        get {
            if let color = layer.borderColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.borderColor = color.cgColor
            } else {
                layer.borderColor = nil
            }
        }
    }
}

@IBDesignable
extension UIView {
    
    @IBInspectable var shadowColor: UIColor?{
        set {
            guard let uiColor = newValue else { return }
            layer.shadowColor = uiColor.cgColor
        }
        get{
            guard let color = layer.shadowColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
    
    @IBInspectable var shadowOpacity: Float{
        set {
            layer.shadowOpacity = newValue
        }
        get{
            return layer.shadowOpacity
        }
    }
    
    @IBInspectable var shadowOffset: CGSize{
        set {
            layer.shadowOffset = newValue
        }
        get{
            return layer.shadowOffset
        }
    }
    
    @IBInspectable var shadowRadius: CGFloat{
        set {
            layer.shadowRadius = newValue
        }
        get{
            return layer.shadowRadius
        }
    }
    
    @IBInspectable
    var shadow: Bool {
        get {
            return layer.shadowOpacity > 0
        }
        set {
            if newValue == true {
                self.addShadow()
            }
        }
    }
    
    @IBInspectable
    var shake: Bool {
        get {
            return (layer.borderColor != nil) == true
        }
        set {
            if newValue == true {
                self.addShakeAnimation()
            }
        }
    }
    
    @IBInspectable
    var ShakeColor: UIColor? {
        get {
            if let color = layer.borderColor {
                return UIColor(cgColor: color)
            }
            return .black
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
    }
    
    func addShadow() {
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOpacity = 1
        self.layer.shadowOffset = CGSize(width: 2, height: 2)
        self.layer.shadowRadius = 2
        self.layer.shouldRasterize = true
        self.layer.rasterizationScale = UIScreen.main.scale
        self.layer.masksToBounds = false
    }
    
    func addShakeAnimation() {
        self.transform = CGAffineTransform(translationX: 10, y: 2)
        self.showBoarderColor()
        UIView.animate(withDuration: 0.6, delay: 0.2, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, options: .curveEaseInOut, animations: {
            self.transform = CGAffineTransform.identity
        }, completion: { _ in
            self.hideBoarderColor()
        })
    }
    
    func showBoarderColor() {
        self.layer.borderColor = self.ShakeColor?.cgColor
        self.layer.borderWidth = 1
        self.layer.shadowColor = self.ShakeColor?.cgColor
        self.layer.shadowOpacity = 0.7
        self.layer.shadowOffset = CGSize(width: 0.5, height: 1)
        self.layer.shadowRadius = 1
        self.layer.masksToBounds = false
    }
    
    func hideBoarderColor() {
        self.layer.borderColor = UIColor.clear.cgColor
        self.layer.shadowColor = UIColor.clear.cgColor
    }
}

