//
//  ViewController.swift
//  UpdownGame
//
//  Created by 정원호 on 2021/08/27.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var slider: UISlider!
        //outlet이란 것은 인터페이스 빌더에 올라와 있는 UI 요소의 값을 가져오는 역할.
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
    }
}

