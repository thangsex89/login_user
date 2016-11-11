//
//  ViewController.swift
//  dangnhap_account
//
//  Created by Thang on 11/10/16.
//  Copyright © 2016 Thang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //
    
    @IBOutlet weak var tf_user: UITextField!
    @IBOutlet weak var tf_notice: UITextField!
    @IBOutlet weak var tf_pass: UITextField!
    @IBOutlet weak var tv_showallusers: UITextView!
    
     var user = ["thai":"123","buoi":"456","chuoi":"789"]

    
    
    @IBAction func btn_action_clear(_ sender: Any) {
        tv_showallusers.text = ""
        tf_user.text = ""
        tf_pass.text = ""
        tf_notice.text = ""
    }
    
    @IBAction func btn_action_showallusers(_ sender: Any) {
        var str_temp: String = ""
        for one in user
        {
            str_temp += one.key + "\n"
        }
        tv_showallusers.text = str_temp
    }
    
    @IBAction func btn_action_login(_ sender: Any)
    {
        if((tf_user.text?.isEmpty)! || (tf_pass.text?.isEmpty)!)
        {
         tf_notice.text = "user hoac pass chua duoc dien"
        }else
        {
            
        if let password  =  user[tf_user.text!]
        {
            if (password == tf_pass.text)
            {
            tf_notice.text = "dang nhap thanh cong"
            }else
            {
                tf_notice.text="mat khau khong dung"
            }
        }else
        {
           tf_notice.text=" tai khoan nay khong ton tai"
        }
        
    }
    }
    
    //
    override func viewDidLoad() {
        for use in user
        {
        print (use.key)
        }
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

