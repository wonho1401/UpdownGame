//
//  ViewController.swift
//  UpdownGame
//
//  Created by 정원호 on 2021/08/27.
//

import UIKit

class ViewController: UIViewController {
    
    var randomValue: Int = 0
    var tryCount: Int = 0
    @IBOutlet weak var slider: UISlider!
        //outlet이란 것은 인터페이스 빌더에 올라와 있는 UI 요소의 값을 가져오는 역할.
    @IBOutlet weak var tryCountLabel: UILabel!
    @IBOutlet weak var sliderValueLabel: UILabel!
    @IBOutlet weak var minValueLabel: UILabel!
    @IBOutlet weak var maxValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slider.setThumbImage(#imageLiteral(resourceName: "slider_thumb"), for: .normal)
        reset()
    }
    
    @IBAction func sliderValueChanged(_ sender:UISlider){         
        print(sender.value)
        let integerValue: Int = Int(slider.value)
        sliderValueLabel.text = String(integerValue)
        
    }
    //IBAction은 인터페이스 빌더에 요소들이 이벤트를 받았을 때 반응하기 위한 역할.
    
    func showAlert(message: String){
        
        let alert = UIAlertController(title: nil,
                                      message: message,
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { (action) in
            self.reset()
        }
        
        alert.addAction(okAction)
        present(alert,
                animated: true,
                completion: nil)
    }
    
    @IBAction func touchUpHitButton(_ sender:UIButton){
        print(slider.value)
        let hitValue: Int = Int(slider.value)
        slider.value = Float(hitValue)
        
        tryCount += 1
        tryCountLabel.text = "\(tryCount)/5"
        
        if randomValue == hitValue {
            showAlert(message: "YOU HIT!!")
            reset()
        }  else if tryCount >= 5{
            showAlert(message: "YOU LOSE..")
            reset()
        } else if randomValue > hitValue {
            slider.minimumValue = Float(hitValue)
            minValueLabel.text = String(hitValue)
        } else {
            slider.maximumValue = Float(hitValue)
            maxValueLabel.text = String(hitValue)
        }
    }
    
    @IBAction func touchUpResetButton(_ sender:UIButton){
        print("Touch up Reset Button")
        reset()
    }
    
    func reset(){
        randomValue = Int.random(in: 0...30)
        print(randomValue)
        tryCount = 0
        tryCountLabel.text = "0/5"
        slider.maximumValue = 30
        slider.minimumValue = 0
        slider.value = 15
        minValueLabel.text = "0"
        maxValueLabel.text = "30"
        sliderValueLabel.text = "15"
        
    }
}

