//
//  ViewController.swift
//  Hello!
//
//  Created by hiso on 2015/06/21.
//  Copyright (c) 2015年 祐輔 花田. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var text_label: UILabel!
    @IBOutlet weak var prev_num_label: UILabel!
    @IBOutlet weak var calc_label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        text_label.text = ""
        prev_num_label.text = ""
        calc_label.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func one_pushed(sender: AnyObject) {
        //text_label.text = text_label.text + String(1)
        text_label.text! += "1"
    }
    
    @IBAction func two_pushed(sender: AnyObject) {
        text_label.text! += "2"
    }
    
    @IBAction func three_pushed(sender: AnyObject) {
        text_label.text! += "3"
    }
    
    @IBAction func four_pushed(sender: AnyObject) {
        text_label.text! += "4"
    }
    
    @IBAction func five_pushed(sender: AnyObject) {
        text_label.text! += "5"
    }
    
    @IBAction func six_pushed(sender: AnyObject) {
        text_label.text! += "6"
    }
    
    @IBAction func seven_pushed(sender: AnyObject) {
        text_label.text! += "7"
    }
    
    @IBAction func eight_pushed(sender: AnyObject) {
        text_label.text! += "8"
    }
    
    @IBAction func nine_pushed(sender: AnyObject) {
        text_label.text! += "9"
    }
    
    @IBAction func zero_pushed(sender: AnyObject) {
        text_label.text! += "0"
    }

    @IBAction func plus_pushed(sender: AnyObject) {
        calc_label.text = "+"
        prev_num_label.text = text_label.text
        text_label.text = ""
    }
    @IBAction func minus_pushed(sender: AnyObject) {
        calc_label.text = "-"
        prev_num_label.text = text_label.text
        text_label.text = ""
    }
    @IBAction func multiply_pushed(sender: AnyObject) {
        calc_label.text = "*"
        prev_num_label.text = text_label.text
        text_label.text = ""
    }
    @IBAction func by_pushed(sender: AnyObject) {
        calc_label.text = "/"
        prev_num_label.text = text_label.text
        text_label.text = ""
    }

    @IBAction func equal_pushed(sender: AnyObject) {
        
        if calc_label.text == "+" {
            text_label.text = String(prev_num_label.text!.toInt()! + text_label.text!.toInt()!)
        }else if calc_label.text == "-" {
            text_label.text = String(prev_num_label.text!.toInt()! - text_label.text!.toInt()!)
        }else if calc_label.text == "*" {
            text_label.text = String(prev_num_label.text!.toInt()! * text_label.text!.toInt()!)
        }else if calc_label.text == "/" {
            text_label.text = String(prev_num_label.text!.toInt()! / text_label.text!.toInt()!)
        }
        
        
    }
    
}

