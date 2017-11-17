//
//  ViewController.swift
//  POC-3DTouch
//
//  Created by Breno Aquino on 16/11/2017.
//  Copyright © 2017 Breno Aquino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: Checagem se possui 3D Toutch
        if traitCollection.forceTouchCapability == UIForceTouchCapability.available {
            
            self.registerForPreviewing(with: self, sourceView: self.view)
            
        } else {
            
            print("Não possui 3D Touch")
        }
    }
}

extension ViewController: UIViewControllerPreviewingDelegate {
    
    // MARK: Preview
    func previewingContext(_ previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController? {
        
        let finalView = storyboard?.instantiateViewController(withIdentifier: "finalID")
        
        return finalView
    }
    
    // MARK: ViewControler Final
    func previewingContext(_ previewingContext: UIViewControllerPreviewing, commit viewControllerToCommit: UIViewController) {
        
        let finalView = storyboard?.instantiateViewController(withIdentifier: "finalID")
        
        self.show(finalView!, sender: self)
    }
}
