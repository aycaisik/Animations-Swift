//
//  ViewController.swift
//  Animations
//
//  Created by Ayça Işık on 25.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var animatableView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        UIView.animate(withDuration: 1) {
            self.view.alpha = 0.5
        }
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 2) {
            self.animatableView.backgroundColor = .yellow
        }
    }


}

