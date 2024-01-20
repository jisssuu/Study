//
//  ViewController.swift
//  AutoLayoutExample
//
//  Created by 장지수 on 2023/04/07.
//

import UIKit

class ViewController: UIViewController {

    // weak로 설정하는 이유: strong은 메모리 누수가 발생
    @IBOutlet weak var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapChangeColorButton(_ sender: UIButton) {
        self.colorView.backgroundColor = UIColor.blue
        print("색상 변경 버튼이 클릭되었습니다.")
    }
    
}

