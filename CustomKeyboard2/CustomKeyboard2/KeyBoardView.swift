//
//  KeyBoardView.swift
//  CustomKeyboard2
//
//  Created by 이성근 on 14/06/2020.
//  Copyright © 2020 Draw_corp. All rights reserved.
//

import UIKit

//델리게이트를위한 프로토콜
protocol KeyBoardDelegate {
    func outputData(str : String)
}

class KeyBoardView: UIView {
    //델리게이트
    var delegate : KeyBoardDelegate?


    @IBAction func btnPress(_ sender: UIButton) {
        guard let data = sender.titleLabel?.text else{
            return
        }
        delegate?.outputData(str: data)

    }
}
