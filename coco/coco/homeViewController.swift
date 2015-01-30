//
//  homeViewController.swift
//  coco
//
//  Created by 陈昊昊 on 29/1/15.
//  Copyright (c) 2015 陈昊昊. All rights reserved.
//

import UIKit

class homeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UIScrollViewDelegate{
    let screenWidth = UIScreen.mainScreen().bounds.width
    let screenHeight = UIScreen.mainScreen().bounds.height
    var titleArea : UIView!;
    var rightBtn : UIButton!;
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.backgroundColor = UIColor.whiteColor()
        titleArea = UIView(frame: CGRectMake(0, 0, screenWidth, 44))
        let titleLabel = UILabel(frame: CGRectMake(10, 0, 80, 44))
        titleLabel.text = "活动"
        titleLabel.font = UIFont(name: "Arial-BoldMT", size: 15);
        titleLabel.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        titleArea.addSubview(titleLabel)
        self.navigationItem.titleView = titleArea
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 0, green: 188/255.0, blue: 212/255.0, alpha: 1)
        
        
        var leftBtn = UIButton(frame: CGRectMake(0, 0, 22, 22));
        leftBtn.setImage(UIImage(named: "menu"), forState: UIControlState.Normal)
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: leftBtn)
        
        rightBtn = UIButton(frame: CGRectMake(0, 0, 22, 22));
        rightBtn.setImage(UIImage(named: "search"), forState: UIControlState.Normal)
        rightBtn.addTarget(self, action: "showSearchBar", forControlEvents: UIControlEvents.TouchUpInside)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightBtn)
        
        
        var contentScroll = UIScrollView(frame: CGRectMake(0, 0, screenWidth, screenHeight))
        contentScroll.contentSize = CGSizeMake(3*screenWidth, 0)
        contentScroll.pagingEnabled = true
        contentScroll.showsVerticalScrollIndicator = false
        contentScroll.showsHorizontalScrollIndicator = false
        //contentScroll.scrollEnabled = false
        contentScroll.directionalLockEnabled = true
        
        
        let contentView1 = UIView(frame: CGRectMake(0, 0, screenWidth, screenHeight))
        contentView1.backgroundColor = UIColor.redColor()
        var contentTable1 = UITableView(frame: CGRectMake(0, 0, screenWidth, screenHeight));
        contentTable1.rowHeight = 100
        contentTable1.delegate = self
        contentTable1.dataSource = self
        contentView1.addSubview(contentTable1)
        
        
        let contentView2 = UIView(frame: CGRectMake(screenWidth, 0, screenWidth, screenHeight))
        contentView2.backgroundColor = UIColor.greenColor()
        
        let contentView3 = UIView(frame: CGRectMake(2*screenWidth, 0, screenWidth, screenHeight))
        contentView3.backgroundColor = UIColor.grayColor()
        
        contentScroll.addSubview(contentView1)
        contentScroll.addSubview(contentView2)
        contentScroll.addSubview(contentView3)
        contentScroll.delegate = self

        self.view.addSubview(contentScroll)
        

        // Do any additional setup after loading the view.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView){
        println("test")
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 10
    }
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cellID = "cellID"
        var cell = tableView.dequeueReusableCellWithIdentifier(cellID) as? UITableViewCell
        if (cell == nil){
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: cellID)
        }
        return cell!
    }

    
    func showSearchBar(){
        //var searchBar = UITextField(frame: CGRectMake(10, 7, screenWidth-100, 30))
        //searchBar.borderStyle = UITextBorderStyle.RoundedRect
        let searchView = searchViewController()
        self.navigationController?.pushViewController(searchView, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
