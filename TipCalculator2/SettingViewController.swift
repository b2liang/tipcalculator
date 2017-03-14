//
//  SettingViewController.swift
//  TipCalculator2
//
//  Created by 梁宝 on 3/12/17.
//  Copyright © 2017 Bao LIang. All rights reserved.
//

import UIKit


class SettingViewController: UIViewController  {
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var label3: UILabel!
    
    let defaults = NSUserDefaults.standardUserDefaults()
    
    var array = ["10%","15%","18%","20%","25%"]
    var index = 0;
    
    
    override func viewDidLoad() {
      
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    @IBAction func first(sender: AnyObject) {
        if (index==0){
            label1.text = "10%"
        }
        else if (index==1){
            label2.text = "10%"
        }
        else if (index==2){
            label3.text = "10%"
        }
        index=index+1
    }
    
    @IBAction func second(sender: AnyObject) {
        if (index==0){
            label1.text = "15%"
        }
        else if (index==1){
            label2.text = "15%"
        }
        else if (index==2){
            label3.text = "15%"
        }
        index=index+1
    }
    
    
    @IBAction func third(sender: AnyObject) {
        if (index==0){
            label1.text = "18%"
        }
        else if (index==1){
            label2.text = "18%"
        }
        else if (index==2){
            label3.text = "18%"
        }
        index=index+1
    }
   
    @IBAction func fourth(sender: AnyObject) {
        if (index==0){
            label1.text = "20%"
        }
        else if (index==1){
            label2.text = "20%"
        }
        else if (index==2){
            label3.text = "20%"
        }
        index=index+1
    }
    
    @IBAction func fifth(sender: AnyObject) {
        if (index==0){
            label1.text = "25%"
        }
        else if (index==1){
            label2.text = "25%"
        }
        else if (index==2){
            label3.text = "25%"
        }
        index=index+1

    }
    
    
    @IBAction func clear(sender: AnyObject) {
        index = 0
        label1.text=""
        label2.text = ""
        label3.text=""
    }
   
    
    
    @IBAction func submit(sender: AnyObject) {
        if (label1.text != "" && label2.text != ""&&label3.text != ""){
            defaults.setObject(label1.text, forKey: "default1")
            defaults.setObject(label2.text, forKey: "default2")
            defaults.setObject(label3.text, forKey: "default3")
            defaults.synchronize()
            print("ok")
            
        }else{
            let alert = UIAlertController(title: "Error", message: "Please select 3 default tip percentages", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        }
        
           }
    
    
    
}
