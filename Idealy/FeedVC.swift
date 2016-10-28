//
//  FeedVC.swift
//  Idealy
//
//  Created by Steven Graf on 10/27/16.
//  Copyright © 2016 Steven Graf. All rights reserved.
//

import UIKit
import Firebase
import SwiftKeychainWrapper

class FeedVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signInTapped(_ sender: AnyObject) {
        let keychainResult = KeychainWrapper.standard.remove(key: KEY_UID)
        print("Steven: ID removed from keychain \(keychainResult)")
        try! FIRAuth.auth()?.signOut()
        performSegue(withIdentifier: "goToSignIn", sender: nil)
    }


}
