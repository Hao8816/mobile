//
//  homeTableViewController.swift
//  coco
//
//  Created by 陈昊昊 on 23/12/14.
//  Copyright (c) 2014 陈昊昊. All rights reserved.
//

import UIKit

class homeTableViewController: UITableViewController,UITableViewDelegate,UITableViewDataSource {
    
    var homeTable:UITableView?;
    let nameList = ["chenhao","smite","micle","chen","chow","liu","zhang","zhao","li","mary","lopp"];
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "我的主页";
        homeTable = UITableView()
        homeTable = UITableView(frame: CGRectMake(0, 0, 320, 480), style: .Plain);
        //homeTable.style = UITableViewStyle.Plain;
        homeTable!.delegate = self;
        homeTable!.dataSource = self;
        self.navigationItem.title = "好友列表";
        let leftItem=UIBarButtonItem(title:"返回",style:.Plain,target:self,action:"nextPage");
        self.navigationItem.leftBarButtonItem = leftItem;
        
        homeTable = UITableView(frame: self.view.bounds, style: .Plain);
        //homeTable.style = UITableViewStyle.Plain;
        homeTable!.delegate = self;
        homeTable!.dataSource = self;
        homeTable?.separatorStyle = UITableViewCellSeparatorStyle.None;
        self.view.addSubview(homeTable!);
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return 11;
    }

    
   override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //let tableCellView = homeTableViewCell();
        //let cell = tableCellView
      /*  var cellId = "cellI";
        var cell = tableView.dequeueReusableCellWithIdentifier(cellId) as? UITableViewCell;
        //var cell = tableView.dequeueReusableCellWithIdentifier(cellId) as？ UITableViewCell;
        if (cell == nil) {
            cell = UITableViewCell(style:UITableViewCellStyle.Subtitle, reuseIdentifier: cellId);
            cell?.frame = CGRectMake(0, 0, self.view.bounds.width, 100);
            //cell = homeTableViewCell(style:UITableViewCellStyle.Default, reuseIdentifier: cellId);
        }
        */
        var cellID = "cellID"
        var cell = tableView.dequeueReusableCellWithIdentifier(cellID) as? UITableViewCell;
      //   var cell = tableView.dequeueReusableCellWithIdentifier(cellID)
        var cellstr   = tableView.dequeueReusableCellWithIdentifier(cellID) as UITableViewCell
    
        //if (cellstr == nil) {
            
        //var cellstr = UITableViewCell (style: UITableViewCellStyle.Subtitle, reuseIdentifier: cellID)
    
        //}
        //cellstr.textLabel?.text = "\(indexPath.row)"
        return cell!
        //cell = homeTableViewCell()
        //cell.label1.text = "chenhao"
        //let title = UILabel(frame: CGRectMake(0, 0, 100, 40));
        //title.text = "实力";
        
        //cell?.textLabel?.text = "\(indexPath.item)";
    
        cell?.textLabel?.frame = CGRectMake(80, 0, 100, 15);
        cell?.textLabel?.text = nameList[indexPath.item];
        cell?.textLabel?.textColor = UIColor(hue: 0, saturation: 0, brightness: 0, alpha: 0.56);
        //var head_image = UIImageView(frame: CGRectMake(10, 10, 30, 30));
        //head_image.image = UIImage(named: "qq.png")
        cell?.imageView?.image = UIImage(named: "head_image.png");
        //cell?.imageView?.frame = CGRectMake(10, 10, 20, 20);
        
        
        cell?.detailTextLabel?.text = "what";
        cell?.detailTextLabel?.textColor = UIColor.redColor();
        var content = UIView(frame: CGRectMake(160, 0, 100, 40));
        //content.backgroundColor = UIColor.greenColor();
        cell?.contentView.addSubview(content);
        //cell?.addSubview(head_image);
        //cell?.frame = CGRectMake(0, 0, self.view.bounds.width, 80);
        //cell.addSubview();
        // Configure the cell...

       // return cell!;
    }

    
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat{
    
        return 60
    }
    
    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
    
    }
    

    
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
