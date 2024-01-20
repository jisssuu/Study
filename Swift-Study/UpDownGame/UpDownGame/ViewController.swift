//
//  ViewController.swift
//  UpDownGame
//
//  Created by 장지수 on 2022/09/12.
//

import UIKit

class ViewController: UIViewController {
    
    var randomValue: Int = 0
    var tryCount: Int = 0
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var tryCountLabel: UILabel!
    @IBOutlet weak var sliderValueLabel: UILabel!
    @IBOutlet weak var minimumValueLabel: UILabel!
    @IBOutlet weak var maximumValueLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        slider.setThumbImage(UIImage(named: "slider_thumb"), for: .normal)
        reset()
    }

    @IBAction func sliderValueChanged( _ sender: UISlider) {
        let sliderIntValue:Int = Int(sender.value)
        sliderValueLabel.text = String(sliderIntValue)
    }
    
    func showAlert(message:String) {
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { action in
            self.reset()
        }
        
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func touchUpHitButton(_ sender: UIButton ) {
        let hitValue:Int = Int(slider.value)
        slider.value = Float(hitValue)
        
        tryCount += 1
        tryCountLabel.text = "\(tryCount) / 5"
        
        if randomValue == hitValue {
            showAlert(message: "You HIT!!")
            reset()
            return
        }
        else if tryCount >= 5 {
            showAlert(message: "You Lose...")
            reset()
        }
        else if randomValue > hitValue {
            slider.minimumValue = Float(hitValue)
            minimumValueLabel.text = "\(hitValue)"
        }
        else {
            slider.maximumValue = Float(hitValue)
            maximumValueLabel.text = "\(hitValue)"
        }
        
    }
    
    @IBAction func touchUpResetButton(_ sender: UIButton) {
        reset()
        print("Touch up reset button")
    }
    func reset() {
        print("reset!")
        randomValue = Int.random(in: 0...30)
        tryCount = 0
        tryCountLabel.text = "0 / 5"
        slider.minimumValue = 0
        slider.maximumValue = 30
        slider.value = 15
        minimumValueLabel.text = "0"
        maximumValueLabel.text = "30"
        sliderValueLabel.text = "15"
    }
}
