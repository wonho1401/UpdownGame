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
    }
    //IBAction은 인터페이스 빌더에 요소들이 이벤트를 받았을 때 반응하기 위한 역할.
    
    @IBAction func touchUpHitButton(_ sender:UIButton){
        print(slider.value)
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

