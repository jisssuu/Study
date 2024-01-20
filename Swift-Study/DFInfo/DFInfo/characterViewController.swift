//
//  characterViewController.swift
//  DFInfo
//
//  Created by 장지수 on 1/17/24.
//

import UIKit
import DropDown

class characterViewController: UIViewController {
    
    
    @IBOutlet weak var dropView: UIView!
    @IBOutlet weak var serverBtn: UIButton!
    @IBOutlet weak var serverInput: UITextField!
    
    let dropDown = DropDown()
    let serverList = ["안톤","바칼","카인","카시야스","디레지에","힐더","프레이","시로코"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
        setDropdown()
        // Do any additional setup after loading the view.
    }
    // DropDown UI 커스텀
    func initUI() {
        // DropDown View의 배경
        dropView.backgroundColor =
        dropView.layer.cornerRadius = 8
        
        DropDown.appearance().textColor = UIColor.black // 아이템 텍스트 색상
        DropDown.appearance().selectedTextColor = UIColor.black // 선택된 아이템 텍스트 색상
        DropDown.appearance().backgroundColor = UIColor.white // 아이템 팝업 배경 색상
        DropDown.appearance().selectionBackgroundColor = UIColor.lightGray // 선택한 아이템 배경 색상
        DropDown.appearance().setupCornerRadius(8)
        dropDown.dismissMode = .automatic // 팝업을 닫을 모드 설정
        
        serverInput.text = "선택해주세요." // 힌트 텍스트
        
    }
    @IBAction func serverBtnTouched(_ sender: Any) {
        dropDown.show()
    }
    func setDropdown() {
        // dataSource로 ItemList를 연결
        dropDown.dataSource = serverList
        
        // anchorView를 통해 UI와 연결
        dropDown.anchorView = self.dropView
        
        // View를 갖리지 않고 View아래에 Item 팝업이 붙도록 설정
        dropDown.bottomOffset = CGPoint(x: 0, y: dropView.bounds.height)
        
        // Item 선택 시 처리
        dropDown.selectionAction = { [weak self] (index, item) in
            //선택한 Item을 TextField에 넣어준다.
            self!.serverInput.text = item
           
        }
        
        // 취소 시 처리
        dropDown.cancelAction = { [weak self] in
            //빈 화면 터치 시 DropDown이 사라지고 아이콘을 원래대로 변경
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
