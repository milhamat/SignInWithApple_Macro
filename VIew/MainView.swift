//
//  MainView.swift
//  SignInWithApple_Macro
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 24/10/20.
//

import UIKit
import SnapKit
import AuthenticationServices

class MainView: UIView {
    
    let appleSignInButton: ASAuthorizationAppleIDButton = {
        let button = ASAuthorizationAppleIDButton()
        return button
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Masuk dengan Apple ID"
        label.font = UIFont(name: "Helvetica", size: 20)
        label.textColor = UIColor(red: 0.10, green: 0.38, blue: 0.49, alpha: 1.00)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView(){
        self.backgroundColor = UIColor(red: 0.94, green: 0.89, blue: 0.87, alpha: 1.00)
        
        self.addSubview(appleSignInButton)
        self.addSubview(titleLabel)
        
        appleSignInButton.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.safeAreaLayoutGuide)
            make.centerY.equalTo(self.safeAreaLayoutGuide).offset(20)
            make.height.equalTo(40)
            make.width.equalTo(300)
        }
        
        titleLabel.snp.makeConstraints { (make) in
            make.bottom.equalTo(appleSignInButton.snp.top).offset(-10)
            make.centerX.equalTo(self.safeAreaLayoutGuide)
        }
    }
}
