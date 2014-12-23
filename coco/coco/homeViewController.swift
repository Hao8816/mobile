//
//  homeViewController.swift
//  coco
//
//  Created by 陈昊昊 on 19/12/14.
//  Copyright (c) 2014 陈昊昊. All rights reserved.
//

import UIKit

class homeViewController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        //let leftItem=UIBarButtonItem(title:"@",style:.Plain,target:self,action:"nextPage");
        //self.navigationItem.leftBarButtonItem = leftItem;
        self.navigationItem.title = "主页";
        
        //var navController = UINavigationController(rootViewController: self);

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

}
