//
//  ViewController.swift
//  teibo3
//
//  Created by minowaryohei on 2015/05/12.
//  Copyright (c) 2015年 rm. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!

    var tableData: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.rowHeight = UITableViewAutomaticDimension
        tableData = ["ハーゲンダッツ限定味 発売", "ゆで方のポイントから意外な調理法まで勢ぞろい。今が旬のアスパラガスを、心ゆくまで味わってみませんか？", "台風6号は奄美大島付近を北東に移動中"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int  {
        return tableData.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath:NSIndexPath) -> UITableViewCell {
        let CellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(CellIdentifier) as CustomCell
        
        cell.customImageView.image = UIImage(named: "\(indexPath.row+1).png")
        cell.customLabel.text = tableData[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath:NSIndexPath) {
        tableData[indexPath.row] += tableData[indexPath.row]
        tableView.reloadData()
    }
}

