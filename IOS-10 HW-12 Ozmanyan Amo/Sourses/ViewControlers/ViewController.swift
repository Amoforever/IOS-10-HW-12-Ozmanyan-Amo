//
//  ViewController.swift
//  IOS-10 HW-12 Ozmanyan Amo
//
//  Created by Amahastla on 23.06.2023.
//
import SnapKit
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
    //MARK: - lesson Label
    let lessonLabel: UILabel = {
        let label = UILabel()
        label.text = "РАБОТАЕМ В ТЕМПЕ"
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textColor = .black
        label.numberOfLines = 0
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    //MARK: - Button start
    let startButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 20
        button.setTitle("START", for: .normal)
        button.backgroundColor = .label
        button.translatesAutoresizingMaskIntoConstraints = false
       return button
    }()
    
    //MARK: - shape view
    let shapeView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "slowmo")?.withTintColor(.lightGray, renderingMode: .alwaysOriginal)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    //MARK: - timer Label
    let timerLabel: UILabel = {
        let label = UILabel()
        label.text = "25"
        label.font = UIFont.boldSystemFont(ofSize: 84)
        label.textColor = .black
        label.numberOfLines = 0
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    var timer = Timer()
    
    
    
    var durationTimer = 25
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        view.layer.insertSublayer(gradient, at: 0)
        setConstraints()
        startButton.addTarget(self, action: #selector(startButtonTapped), for: .touchUpInside)
    }
    @objc func startButtonTapped() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
    }
    @objc func timerAction() {
        durationTimer -= 1
        timerLabel.text = "\(durationTimer)"
        print(durationTimer)
        if durationTimer == 0 {
            timer.invalidate()
        }
    }

}


