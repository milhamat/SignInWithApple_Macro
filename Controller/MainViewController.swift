//
//  ViewController.swift
//  SignInWithApple_Macro
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 23/10/20.
//

import UIKit

class MainViewController: UIViewController {
    
    private var mainView: MainView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mainView = MainView(frame: self.view.frame)
        self.view = self.mainView
        
        self.navigationController?.isNavigationBarHidden = true
        
    }
    
    
}

