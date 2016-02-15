//
//  ViewController.swift
//  PhotoTable
//
//  Created by Jan Dammshäuser on 14.02.16.
//  Copyright © 2016 Jan Dammshäuser. All rights reserved.
//

import UIKit

class TableVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.dataSource = self
        table.delegate = self
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "reloadTable:", name: "reloadData", object: nil)
        
        DataService.inst.loadData()
    }
    
    func reloadTable(notif: AnyObject) {
        table.reloadData()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.inst.dataList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellOld = tableView.dequeueReusableCellWithIdentifier("PicsCell") as? PicsCell
        
        let cell = cellOld != nil ? cellOld! : PicsCell()
        
        cell.initializeCell(DataService.inst.dataList[indexPath.row])
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let view = ImageVC(pic: DataService.inst.dataList[indexPath.row])
        
        presentViewController(view, animated: true, completion: nil)
    }
    
}
