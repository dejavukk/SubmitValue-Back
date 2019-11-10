//
//  FormViewController.swift
//  SubmitValue-Back
//
//  Created by JunHyuk on 2019/11/06.
//  Copyright © 2019 junhyuk. All rights reserved.
//

import UIKit

class FormViewController: UIViewController {
    
    @IBOutlet var email: UITextField!
    @IBOutlet var isUpdate: UISwitch!
    @IBOutlet var interval: UIStepper!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // Submit 버튼을 탭 했을 때 호출되는 메소드.
    @IBAction func onSubmit(_ sender: Any) {
        
        let preVC = self.presentingViewController
        guard let vc = preVC as? ViewController else {
            
            return
        }
        
        // UserDefualt 객체의 인스턴스를 가져온다.
        let ud = UserDefaults.standard
        
        // 값을 저장
        ud.set(self.email.text, forKey: "email")
        ud.set(self.isUpdate.isOn, forKey: "isUpdate")
        ud.set(self.interval.value, forKey: "interval")
        
        
        // let ad = UIApplication.shared.delegate as? AppDelegate
        
        // 이전 화면으로 복귀한다.
        self.presentingViewController?.dismiss(animated: true)
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
