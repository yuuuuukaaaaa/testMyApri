
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
    
    override func viewDidLoad() {
        myPickerView.delegate = self
        myPickerView.dataSource = self
        
        
    }

////    self.インスタンスメソッド
////
////    delegate.インスタンスメソッド
////
////    インスタンス。いんすたんすめそっど
////
////    いんすたんす（UITableViewCellのインスタンス）
////    いんすたんすめそっど（UITableViewCellくらすにていぎしてあるめそっど）
//
//    myPickerView.delegate.tableView(_ tableView: UITableView, )

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

//        tableView.register(<#T##cellClass: AnyClass?##AnyClass?#>, forCellReuseIdentifier: <#T##String#>)
//       cell.accessoryType = UITableViewCellAccessoryType.checkmark
//


        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     return 3
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}







