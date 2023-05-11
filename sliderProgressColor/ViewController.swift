//
//  ViewController.swift
//  sliderProgressColor
//
//  Created by Mobile Apps 31 on 4/11/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var box: UIView!
    @IBOutlet weak var ACT: UIActivityIndicatorView!
    @IBOutlet weak var colorPick: UIColorWell!
    @IBOutlet weak var midPRO: UIProgressView!
    @IBOutlet weak var bottomPRO: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func swit(_ sender: UISwitch) {
        if sender.isOn {
            ACT.startAnimating()
        } else {
            ACT.stopAnimating()
        }
    }
    @IBAction func butt(_ sender: UIButton) {
        if let color = colorPick.selectedColor {
            box.backgroundColor = color
        }
    }
    @IBAction func mario64Slider(_ sender: UISlider) {
        let v = sender.value
        //print(v)
        if v > 0.75 {
            bottomPRO.progressTintColor = .red
        } else if v < 0.25 {
            bottomPRO.progressTintColor = .green
        } else {
            bottomPRO.progressTintColor = .blue
        }
        midPRO.progressTintColor = UIColor(red: CGFloat(v), green: CGFloat(v), blue: 0, alpha: 1)
        bottomPRO.progress = v
        midPRO.progress = 1 - v
    }
    

}

