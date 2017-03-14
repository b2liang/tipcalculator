//
//  ViewController.swift
//  TipCalculator2
//
//  Created by 梁宝 on 3/12/17.
//  Copyright © 2017 Bao LIang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var seg: UISegmentedControl!
    var text:String! = ""
    let defaults = NSUserDefaults.standardUserDefaults()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        if (defaults.objectForKey("default1") != nil && defaults.objectForKey("default2") != nil && defaults.objectForKey("default3") != nil){
            let stringValue1 = defaults.objectForKey("default1") as! String
            let stringValue2 = defaults.objectForKey("default2") as! String
            let stringValue3 = defaults.objectForKey("default3") as! String
            label1.text = stringValue1
            label2.text = stringValue2
            label3.text = stringValue3
            print(stringValue1)
            print(stringValue2)
            print(stringValue3)
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

    @IBAction func CalculateTip(sender: AnyObject) {
        var index = seg.selectedSegmentIndex
        
        switch index{
        case 0  :
            text = label1.text
        case 1  :
            text = label2.text
        case 2  :
            text = label3.text
        default: break
            
        }
        print(text)
        
        var num = 0.00
        
        switch text{
        case "10%"  :
            num = 0.1
        case "15%"  :
            num = 0.15
        case "18%"  :
            num = 0.18
        case "20%"  :
            num = 0.2
        case "25%"  :
            num = 0.25
        default: break
        }
        
        
        
        
        //let tipPerc = [0.18, 0.2, 0.25]
        let bill = Double(billField.text!) ?? 0
        //let bill = Double(billField.text!) ?? 0
       // let tip = bill*tipPerc[seg.selectedSegmentIndex ]
     //   let num = Double(text) ?? 0
        let tip = bill*num
        let total = bill + tip
        
        
        tipLabel.text = String(format: "$%.2f", tip)
         totalLabel.text = String(format: "$%.2f", total)
    }
}

