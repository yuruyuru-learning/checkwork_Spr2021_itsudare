//
//  ViewController.swift
//  ItuDareGameApp
//
//  Created by クワシマ・ユウキ on 2020/09/02.
//  Copyright © 2020 クワシマ・ユウキ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var ituLabel: UILabel!
    @IBOutlet var dokoLabel: UILabel!
    @IBOutlet var dareLabel: UILabel!
    @IBOutlet var naniLabel: UILabel!
    
    let ituArray: [String] = ["今日", "昨日", "一年前", "10年前", "100年前", "1000年前"]
    let dokoArray: [String] = ["学校で", "教室で", "家で", "山で", "車で", "お店で"]
    let dareArray: [String] = ["僕が", "友達が", "猫が", "ペンギンが", "教師が", "かめが"]
    let naniArray: [String] = ["叫んだ", "転んだ", "お菓子を食べた", "ジャンプした", "走った", "寝た"]
    
    var index: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func change(){
        index += 1
        
        if index >= ituArray.count{
            index = 0
        }
        
        updateLabelText(ituArray[index],
                        dokoArray[index],
                        dareArray[index],
                        naniArray[index])
    }
    
    @IBAction func random(){
        updateLabelText(ituArray[Int.random(in: 0..<ituArray.count)],
                        dokoArray[Int.random(in: 0..<dokoArray.count)],
                        dareArray[Int.random(in: 0..<dareArray.count)],
                        naniArray[Int.random(in: 0..<naniArray.count)])
    }
    
    @IBAction func reset(){
        index = 0
        updateLabelText("---", "---", "---", "---")
    }
    
    func updateLabelText(_ itu: String, _ doko: String, _ dare: String, _ nani: String){
        ituLabel.text = itu
        dokoLabel.text = doko
        dareLabel.text = dare
        naniLabel.text = nani
    }
}

