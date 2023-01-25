//
//  ViewController.swift
//  Animations
//
//  Created by Ayça Işık on 25.01.2023.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var animatableView: UIView!
    @IBOutlet weak var resim: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIView.animate(withDuration: 1) {
            self.view.alpha = 0.5
        }
    }
    
   /* override func viewDidLayoutSubviews() {
        let textfield = UITextField.init(frame: CGRect(x: 126, y: 150, width: 200 , height: 200))
                
        textfield.textColor = .black
      
        
        
        textfield.placeholder = "seni seviom askusum🖤"
        textfield.delegate = self
        view.addSubview(textfield)
        
        
    }
    */
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
            
            /*UIView.animate(withDuration: 3, delay: 4, options: [.repeat]) {
                self.animatableView.backgroundColor = .white
                
                self.resim.frame = CGRect(x: 100, y: 300, width: 70, height: 50)
                
            }*/
            applyScaleTransformation()
            
        }
        //Transform: Arayüz elemanları üzerinde ; scale , rotate translate ,move gibi
        //değişiklikler yapılmasını sağlayan proepertydir.
        
        func applyScaleTransformation(){
            //Transform uygulancak arayüz elemanının genişlik ve yükseklik bilgisini iki katına çıkarır.
            let scaletransform = CGAffineTransform(scaleX: 2.0, y: 2.0)
            UIView.animate(withDuration: 2) {
                self.animatableView.transform = scaletransform
            }
        }
        
        func applyRotationTransformation(){
            let rotationtransform = CGAffineTransform(rotationAngle: .pi)
            UIView.animate(withDuration: 2){
                self.animatableView.transform = rotationtransform

            }
        }
    }
}
