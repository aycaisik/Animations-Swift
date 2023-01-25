//
//  ViewController.swift
//  Animations
//
//  Created by Ayça Işık on 25.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var animatableView: UIView!
    @IBOutlet weak var resim: UIImageView!
    @IBOutlet  var titlew: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIView.animate(withDuration: 1) {
            self.view.alpha = 0.5
        }
    }
    
    override func viewDidLayoutSubviews() {
        let textfield = UITextField.init(frame: CGRect(x: 0, y: 0, width: 150 , height: 134))
        textfield.backgroundColor = .white
        textfield.textColor = .systemPink
        textfield.placeholder = "seni seviom askusum💖"
        
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 2) {
           // self.animatableView.backgroundColor = .yellow
            //self.animatableView.frame.size = CGSize(width: 100, height: 100)
            //self.animatableView.frame = CGRect(x: 100, y: 300, width: 70, height: 40)
            
            /*UIView.animate(withDuration: 2 , animations: {
                self.animatableView.backgroundColor = .red
            }) { (_) in
                //Animasyon tamamlandıktan sonra çalışır.
                UIView.animate(withDuration: 1) {
                    self.animatableView.frame = CGRect(x: 100, y: 200, width: 50, height: 40)
                }
            }
            
            */
            
            UIView.animate(withDuration: 2, delay: 3, options: [.repeat]) {
                self.animatableView.backgroundColor = .red
                
                self.resim.frame = CGRect(x: 100, y: 300, width: 70, height: 50)
            
                
                
            }
            
        }
        
        
    }
}
