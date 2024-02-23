//
//  ViewController.swift
//  test4
//
//  Created by Huy Vu on 2/23/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorImg: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Tạo một layer gradient
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = UIScreen.main.bounds
        
        // Chuyển màu sang không gian màu sRGB
        let startColor = UIColor(displayP3Red: 220/255, green: 226/255, blue: 255/255, alpha: 1).cgColor
        let endColor = UIColor(displayP3Red: 244/255, green: 246/255, blue: 255/255, alpha: 0).cgColor
        gradientLayer.colors = [startColor, endColor]
        
        // Thiết lập hướng của gradient
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)
        
        // Thêm gradient layer vào UIView
        colorImg.layer.addSublayer(gradientLayer)
    }


}

