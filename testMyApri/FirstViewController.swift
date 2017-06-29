
//  FirstViewController.swift
//  testMyApri
//
//  Created by MacUser on 2017/06/18.
//  Copyright © 2017年 Yuka Saito. All rights reserved.
//

import UIKit

//1プロトコルの設定
class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var myPickerView: UITableView!

    @IBOutlet weak var addButton: UIBarButtonItem!
   
    //データを用意する（メンバ変数）
    var foodArray = ["トマト","にんじん","じゃがいも"]
    
    //選択された行番号
    var selectedIndex = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //行数を設定
    //INT ; 戻り値でデータ型はInt型ですという意味　ついているものは戻り値がある
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodArray.count
    }
    
    //リストに表示する文字列行数を決定表示
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = foodArray[indexPath.row]
        
        return cell
    }

     override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}







