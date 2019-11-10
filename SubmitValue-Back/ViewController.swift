//
//  ViewController.swift
//  SubmitValue-Back
//
//  Created by JunHyuk on 2019/11/06.
//  Copyright © 2019 junhyuk. All rights reserved.
//

import UIKit

//VC1
class ViewController: UIViewController {
    
    // 값을 표시하기 위한 Outlet변수들.
    @IBOutlet weak var resultEmail: UILabel!
    @IBOutlet weak var resultUpdate: UILabel!
    @IBOutlet weak var resultInterval: UILabel!
    
    // 값 전달 받을 프로퍼티
    // var paramEmail: String?
    // var paramUpdate: Bool?
    // var paramInterval: Double?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // 앱의 순환주기.
    override func viewWillAppear(_ animated: Bool) {
        
        // UserDefault 객체의 인스턴스를 가져온다.
        let ud = UserDefaults.standard
        
        if let email = ud.string(forKey: "email") {
            resultEmail.text = email
        }
        
        let update = ud.bool(forKey: "isUpdate")
        resultUpdate.text = (update == true ? "자동갱신" : "자동갱신안함")
        
        let interval = ud.double(forKey: "interval")
        resultInterval.text = "\(Int(interval))"
        
        // let ad = UIApplication.shared.delegate as? AppDelegate
        
    }

    @IBAction func registerButton(_ sender: Any) {
        
        
        
        
    }
    
}

