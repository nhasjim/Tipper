//
//  ViewController.swift
//  Tipper
//
//  Created by Nick Hasjim on 12/31/16.
//  Copyright © 2016 Nick Hasjim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var bill: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var taxAmount: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true);
    }

    
    @IBAction func calcTip(_ sender: AnyObject) {
        
        let tipPercentages = [0.18, 0.20, 0.25];
        let billAmount = Double(bill.text!) ?? 0;
        let tip = billAmount * tipPercentages[tipControl.selectedSegmentIndex];
        let total = billAmount + tip;
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f",total);
        
    }
}

