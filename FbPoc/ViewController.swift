//
//  ViewController.swift
//  FbPoc
//
//  Created by Noel on 6/5/17.
//  Copyright © 2017 Noel. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKShareKit

class ViewController: UIViewController, FBSDKSharingDelegate {
    
    @IBOutlet weak var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func share(sender: Any) {
        print("Share!")
        
        let content = FBSDKShareLinkContent()
        content.contentURL = URL(string: "http://www.google.com")
        FBSDKShareDialog.show(from: self, with: content, delegate: self)
    }
    
    func sharerDidCancel(_ sharer: FBSDKSharing!) {
        print("FB sharing cancelled")
    }
    
    func sharer(_ sharer: FBSDKSharing!, didFailWithError error: Error!) {
        print("FB sharing failed: \(error.localizedDescription)")
    }
    
    func sharer(_ sharer: FBSDKSharing!, didCompleteWithResults results: [AnyHashable : Any]!) {
        print("FB sharing success!")
    }

}

