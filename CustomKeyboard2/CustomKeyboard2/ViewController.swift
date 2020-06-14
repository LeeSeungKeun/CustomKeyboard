//
//  ViewController.swift
//  CustomKeyboard2
//
//  Created by 이성근 on 13/06/2020.
//  Copyright © 2020 Draw_corp. All rights reserved.
//

import UIKit

class ViewController: UIViewController, KeyBoardDelegate {
    //프로토콜 구현
    func outputData(str: String) {
        print(str)
        firstTextField.text = str
    }

    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        let myKeyboard =  Bundle.main.loadNibNamed("Keyboard", owner: nil, options: nil) //xib 로드
        guard let keyboard = myKeyboard?.first as? KeyBoardView else {return} // 다운캐스팅
        firstTextField.inputView = keyboard // inputView 표시 해주기
        keyboard.delegate = self // 델리게이트 위임 
    }
}

