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
        
        text_label.text = ""
        prev_num_label.text = ""
        calc_label.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func num_button_pushed(sender: UIButton) {
        text_label.text! += sender.titleLabel!.text!
    }
    
    @IBAction func calc_sign_pushed(sender: UIButton) {
        calc_label.text = sender.titleLabel!.text!
        prev_num_label.text = text_label.text
        text_label.text = ""
    }
    
    @IBAction func equal_pushed(sender: AnyObject) {
        if prev_num_label.text!.toInt() != nil && text_label.text!.toInt() != nil {
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
}
