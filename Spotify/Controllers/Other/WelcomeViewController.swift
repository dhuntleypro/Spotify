//
//  WelcomeViewController.swift
//  Spotify
//
//  Created by Darrien Huntley on 2/21/22.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    let signInButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Spotify"
        view.backgroundColor = .systemGreen
        
        setup()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        signInButton.frame = CGRect(
            x: 20,
            y: view.height-50-view.safeAreaInsets.bottom,
            width: view.width-40,
            height: 50
            
        )
    }
    
    @objc func didTapSignIn() {
        let vc = AuthViewController()
        vc.completionHandler = { [weak self] success in
            DispatchQueue.main.async {
                self?.handleSignIn(success: success)
            }
        }
        
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private func handleSignIn(success: Bool) {
        // Log user in or show error
    }
    
    func setup() {
        view.addSubview(signInButton)
        
        signInButton.backgroundColor = .white
        signInButton.setTitle("Sign In with Spotify", for: .normal)
        signInButton.setTitleColor(.blue, for: .normal)
        signInButton.addTarget(self, action: #selector(didTapSignIn), for: .touchUpInside)
        
    }

}
