//
//  HomeViewController.swift
//  News
//
//  Created by 陈昊昊 on 18/1/15.
//  Copyright (c) 2015 陈昊昊. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor();
        let titleView = UILabel(frame: CGRectMake(0, 0, 100, 40));
        titleView.text = "企业头条";
        titleView.font = UIFont(name: "Arial-BoldMT", size: 18);
        titleView.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.87);
        titleView.textAlignment = NSTextAlignment.Center;
        self.navigationItem.titleView = titleView;
        //self.navigationController?.navigationBar.
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 229/255.1, green: 28/255.0, blue: 50/255.0, alpha: 1)
        
        var homeToolBar = UIToolbar(frame: CGRectMake(0, 60, UIScreen.mainScreen().bounds.width, 36));
        var b1 = UIBarButtonItem(title: "公司新闻", style: UIBarButtonItemStyle.Plain, target: self, action: nil);
        b1.tintColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.87);
        var b2 = UIBarButtonItem(title: "对手动态", style: UIBarButtonItemStyle.Plain, target: self, action: "changeHomeView");
        b2.tintColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.87);
        var b3 = UIBarButtonItem(title: "行业信息", style: UIBarButtonItemStyle.Plain, target: self, action: "changeHomeView");
        b3.tintColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.87);
        var b4 = UIBarButtonItem(title: "驻所舆情", style: UIBarButtonItemStyle.Plain, target: self, action: "changeHomeView");
        b4.tintColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.87);
        var b5 = UIBarButtonItem(title: "潜在客户", style: UIBarButtonItemStyle.Plain, target: self, action: "changeHomeView");
        b5.tintColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.87);
        var b6 = UIBarButtonItem(title: "品牌口碑", style: UIBarButtonItemStyle.Plain, target: self, action: "changeHomeView");
        b6.tintColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.87);
        
        homeToolBar.setItems([b1,b2,b3,b4], animated: true);
        //homeToolBar.items = [l1]
        
        self.view.addSubview(homeToolBar);
        
        var homeTable = homeTableViewController();

        
        let screenWidth = UIScreen.mainScreen().bounds.width;
        let screenHeight = UIScreen.mainScreen().bounds.height;
        
        
        //self.view.addSubview(infoTable);
       
        // Do any additional setup after loading the view.
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
    
    func changeHomeView(){
    
        println("change this file")
    }

}
