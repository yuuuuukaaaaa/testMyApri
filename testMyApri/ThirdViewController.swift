//
//  ThirdViewController.swift
//  testMyApri
//
//  Created by MacUser on 2017/06/18.
//  Copyright © 2017年 Yuka Saito. All rights reserved.
//

import UIKit


class ThirdViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    @IBOutlet weak var myTableView: UITableView!
    
    @IBOutlet weak var addButton: UIBarButtonItem!
    
    //    データを配列で用意する（メンバ変数　どこでも使える変数！）
    var foodArray = ["ダージリン","アッサム","アールグレイ","ロイヤル・ブレックファースト"]
    //選択された行番号
    var selectedIndex = -1
    //TODO:テーブルビューに紅茶のリストを表示しましょう
    //文字色は紅茶がイメージできる色（黒以外）
    //右側にアクセサリ（＞みたいなマークをつけましょう）
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //2　行数を設定
    //-> Int：戻り値のデータ型はInt型ですという意味　ついているものは戻り値がある
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodArray.count
        
    }
    
    //3 リストに表示する文字列行数を決定表示
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
            cell.textLabel?.text = foodArray[indexPath.row]
        
        return cell
    }
    
    //セルがタップ（選択）された時
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("選択されたデータ:\(foodArray[indexPath.row])")
        //選択されたメンバ変数行番号をメンバ変数に格納
        selectedIndex = indexPath.row
        
        //セグエを指定して画面移動
        performSegue(withIdentifier: "showDetail", sender: nil)
    }
    
    //セグエを通って次の画面へ移動するとき
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //次の画面をインスタンス化(as:ダウンキャスト型変換)
        
       // var dvc = segue.destination as ditailViewController
        
        //次の画面のプロパティに選択された行番号を指定
      //  dvc.sIndex = selectedIndex
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
