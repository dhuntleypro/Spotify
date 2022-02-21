//
//  ViewController.swift
//  Spotify
//
//  Created by Darrien Huntley on 2/21/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    // Programamic setup
    /*
     1. Delete Main file
     2. In info.plist : remove - Main storyboard file base name
     3. Application Scene Manifest .... drown down to storeboard name and remove thst
     4. Update SceneDelegate and AppDelegate
     
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Home"
        view.backgroundColor = .systemBackground
    }
    
    
}

