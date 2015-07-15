//
//  ViewController.swift
//  HorizontalScroll
//
//  Created by Laxman on 15/07/15.
//  Copyright (c) 2015 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate , UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    tableView.registerClass(TableCell.self, forCellReuseIdentifier: "Cell")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell: TableCell = tableView.dequeueReusableCellWithIdentifier("Cell") as! TableCell
        
        return  cell
    }
    
}

