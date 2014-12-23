//
//  ViewController.swift
//  coco
//
//  Created by 陈昊昊 on 18/12/14.
//  Copyright (c) 2014 陈昊昊. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var nameInput:UITextField!;
    var passwordInput:UITextField!;

    override func viewDidLoad() {
        super.viewDidLoad()
        //var navBar = UINavigationController();
        //self.view.backgroundColor = UIColor.blueColor();
        //self.navigationController?.navigationBar.tintColor = UIColor.blueColor();
        //self.navigationController?.navigationBar.backgroundColor = UIColor.whiteColor();
        //  添加到到导航栏上
        //let rightItem=UIBarButtonItem(title:"返回",style:.Plain,target:self,action:"nextPage");
        //self.navigationItem.rightBarButtonItem = rightItem;
        //self.navigationController?.navigationBar.lab
        //let leftItem=UIBarButtonItem(title:"注册",style:.Plain,target:self,action:"nextPage");
        //self.navigationItem.leftBarButtonItem = leftItem;
        //self.navigationItem.title = "登陆";
        let titleLabel = UILabel(frame: CGRectMake(0, 0, 100, 30));
        titleLabel.text = "用户登录";
        titleLabel.textAlignment = NSTextAlignment.Center;
        titleLabel.textColor = UIColor.purpleColor();
        self.navigationItem.titleView = titleLabel;
        
        
        //var myLabel = UILabel(frame: CGRectMake(0, 40, UIScreen.mainScreen().bounds.width, 60));
        //myLabel.backgroundColor = UIColor.redColor();
        //myLabel.text = "@chenhao";
        //self.view.addSubview(myLabel);

        
        nameInput = UITextField(frame: CGRectMake(20, 100, UIScreen.mainScreen().bounds.width-40, 40));
        nameInput.borderStyle = UITextBorderStyle.RoundedRect;
        nameInput.placeholder = "请输入姓名";
        self.view.addSubview(nameInput);
        
        passwordInput = UITextField(frame: CGRectMake(20, 160, UIScreen.mainScreen().bounds.width-40, 40));
        passwordInput.borderStyle = UITextBorderStyle.RoundedRect;
        passwordInput.placeholder = "请输入密码";
        passwordInput.secureTextEntry = true;
        self.view.addSubview(passwordInput);
        // Do any additional setup after loading the view, typically from a nib.
    
        var myLabel2 = UILabel(frame: CGRectMake(20, 210, UIScreen.mainScreen().bounds.width, 40));
        myLabel2.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.4);
        myLabel2.text = "@chenhao";
        self.view.addSubview(myLabel2);
        
        var loginButton = UIButton.buttonWithType(UIButtonType.System) as UIButton;
        loginButton.frame = CGRectMake(40, 260, UIScreen.mainScreen().bounds.width-80, 40);
        loginButton.setTitle("点击登录", forState: UIControlState.Normal);
        loginButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal);
        loginButton.addTarget(self, action: "login", forControlEvents: UIControlEvents.TouchUpInside);
        loginButton.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6);
        
        self.view.addSubview(loginButton);

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // define next button
    func nextPage(){
        println("this is a test");
    
    }
    
    // login function
    func login(){
        var name = nameInput?.text;
        var password = passwordInput?.text;
        println(name);
        println(password);
        var homeController = homeTableViewController();
        var homeNav = UINavigationController(rootViewController: homeController);
        self .presentViewController(homeNav, animated: true, completion: nil)
//        self.navigationController?.pushViewController(homeNav, animated:false);
    
    }


}

