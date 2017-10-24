//
//  ViewController.swift
//  sampleDatePicker
//
//  Created by 加藤　大起 on 2017/10/23.
//  Copyright © 2017年 Taiki Kato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myDatePicker: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //DateFormatterを使って文字型から日付型に変更する
        let df = DateFormatter()
        df.dateFormat = "yyyy/MM/dd"
        
        //選択可能な最小値を決定(2017/01/01)
        myDatePicker.minimumDate = df.date(from: "2017/01/01")
        
        //選択可能な最大値(2017/12/31)
        myDatePicker.maximumDate = df.date(from: "2017/12/31")
        
        //初期値を設定
        myDatePicker.date = df.date(from: "2017/10/01")!
        
    }

    @IBAction func changeDate(_ sender: UIDatePicker) {
        
        print(sender.date);
        
        let df = DateFormatter()
        df.dateFormat = "yyyy/MM/dd"
        
        //時差を補正する（日本時間に設定）
        df.locale = Locale(identifier: "ja_JP");
        
        print(df.string(from: sender.date))
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

