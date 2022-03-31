//
//  ViewController.swift
//  FlexLayoutPreviews
//
//  Created by Denver on 2022/03/31.
//

import UIKit
import FlexLayout
import PinLayout
import Then


class ViewController: UIViewController {
  
  let container: UIView = UIView()
  
  let imageView = UIImageView(frame: .zero)
    .then {
      $0.image = UIImage(systemName: "star")
      $0.contentMode = .scaleAspectFit
      $0.tintColor = .red
    }
  
  let idTextField = UITextField(frame: .zero)
    .then {
      $0.placeholder = "Enter Your ID!"
      $0.layer.cornerRadius = 4
      $0.layer.borderColor = UIColor.lightGray.cgColor
      $0.layer.borderWidth = 1
      $0.backgroundColor = .white
      $0.returnKeyType = .next
    }
  
  let pwTextField = UITextField(frame: .zero)
    .then {
      $0.placeholder = "Enter Your Password!"
      $0.layer.cornerRadius = 4
      $0.layer.borderColor = UIColor.lightGray.cgColor
      $0.layer.borderWidth = 1
      $0.backgroundColor = .white
      $0.isSecureTextEntry = true
      $0.returnKeyType = .done
    }
  
  let loginButton = UIButton(type: .custom)
    .then {
      $0.setTitle("Sign In!", for: .normal)
      $0.setTitleColor(.black, for: .normal)
      $0.layer.borderColor = UIColor.black.cgColor
      $0.layer.borderWidth = 1
      $0.layer.cornerRadius = 4
    }
  
  let signUpButton = UIButton(type: .custom)
    .then {
      let attr = NSAttributedString(string: "Sign Up",
                                    attributes: [
                                      .underlineStyle : NSUnderlineStyle.single.rawValue,
                                      .font : UIFont.systemFont(ofSize: 15),
                                      .foregroundColor : UIColor.gray
                                    ])
      $0.setAttributedTitle(attr, for: .normal)
    }
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    container.backgroundColor = .clear
    
    self.view.addSubview(container)
    
    configureUI()
  }
  
  func configureUI() {
    self.container.flex.define { flex in
      
      flex.addItem(imageView)
        .size(150)
        .marginTop(30)
        .marginBottom(40)
      
      flex.addItem(idTextField)
        .width(300)
        .height(52)
        .marginBottom(10)
      
      flex.addItem(pwTextField)
        .width(300)
        .height(52)
        .marginBottom(24)
      
      flex.addItem(loginButton)
        .width(300)
        .height(52)
      
      flex.addItem(signUpButton)
        .marginTop(10)
        .marginBottom(30)
      
    }
    .justifyContent(.start)
    .alignItems(.center)
    .backgroundColor(.clear)
  }
  
  override func viewWillLayoutSubviews() {
    super.viewWillLayoutSubviews()
    
    
    self.container.pin.vertically(self.view.pin.safeArea)
    self.container.pin.horizontally()
    
    self.container.pin.layout()
    self.container.flex.layout(mode: .fitContainer)
  }
  
}

#if canImport(SwiftUI) && DEBUG
import SwiftUI
import SwiftPreview

struct ViewController_Previews: PreviewProvider {
  static var previews: some View {
    UIViewControllerPreview {
      ViewController()
    }
  }
}
#endif
