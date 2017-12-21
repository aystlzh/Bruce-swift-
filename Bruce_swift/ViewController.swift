//
//  ViewController.swift
//  Bruce_swift
//
//  Created by lxllzh on 2017/12/18.
//  Copyright © 2017年 lxllzh. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource {
    
    var table :UITableView!
    var ctrNames:[String]?
    let arr:[String] = ["w","s"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = (table.dequeueReusableCell(withIdentifier: "cellID", for: indexPath)) as UITableViewCell
        NSLog("********--cellForRowAt--cell--%d--",indexPath.row);

        return cell
    }
    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        NSLog("********--heightForRow--高度--indexPath-%d--",indexPath.row);

        return 50
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.backgroundColor = UIColor.orange;
        
        let rect = self.view.frame;
        table = UITableView(frame:rect)
        self.table.backgroundColor = UIColor.blue
        self.view.addSubview(table!)
        //设置数据源
        self.table.dataSource = self
        //设置代理
        self.table.delegate = self
        self.view.addSubview(table)
        //注册UITableView，cellID为重复使用cell的Identifier
        self.table.register(UITableViewCell.self, forCellReuseIdentifier: "cellID")
        
        NSLog("********--test---*******");
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    

}

