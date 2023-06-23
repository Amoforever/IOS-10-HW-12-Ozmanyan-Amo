//
//  ViewController.swift
//  IOS-10 HW-12 Ozmanyan Amo
//
//  Created by Amahastla on 23.06.2023.
//

import UIKit

class ViewController: UIViewController {
//MARK: - gradient of background
    private lazy var gradient: CAGradientLayer = {
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [UIColor.systemRed.cgColor, UIColor.yellow.cgColor]
        gradient.startPoint = CGPoint(x: 0.5, y: 0)
        gradient.endPoint = CGPoint(x: 0.5, y: 1)
        return gradient
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        view.layer.insertSublayer(gradient, at: 0)
    }


}

