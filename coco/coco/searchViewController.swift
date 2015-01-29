//
//  searchViewController.swift
//  coco
//
//  Created by 陈昊昊 on 29/1/15.
//  Copyright (c) 2015 陈昊昊. All rights reserved.
//

import UIKit

class searchViewController: UIViewController {
    let screenWidth = UIScreen.mainScreen().bounds.width
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        
        var leftBtn = UIButton(frame: CGRectMake(0, 0, 22, 22));
        leftBtn.setImage(UIImage(named: "back"), forState: UIControlState.Normal)
        leftBtn.addTarget(self, action: "backHomeView", forControlEvents: UIControlEvents.TouchUpInside)
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: leftBtn)
        
        var titleLabel = UILabel(frame: CGRectMake(0, 0, screenWidth-88, 44))
        titleLabel.text = "搜索活动"
        titleLabel.font = UIFont(name: "Arial-BoldMT", size: 15);
        titleLabel.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        titleLabel.textAlignment = NSTextAlignment.Center
        self.navigationItem.titleView = titleLabel
        
        
        var searchBar = UISearchBar(frame:CGRectMake(0, 62, screenWidth, 44))
        searchBar.placeholder = "搜索"
        //searchBar.barStyle = UIBarStyle.Default
        //searchBar.searchBarStyle = UISearchBarStyle.Minimal
        //searchBar.showsSearchResultsButton = true
        searchBar.barTintColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1)
        //searchBar.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1)
        self.view.addSubview(searchBar)


        // Do any additional setup after loading the view.
    }
    
    func backHomeView(){
        self.navigationController?.popToRootViewControllerAnimated(true)
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
