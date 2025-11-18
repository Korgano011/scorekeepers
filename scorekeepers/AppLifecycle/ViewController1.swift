//
//  ViewController.swift
//  ViewControllerLifecycle
//
//  Created by Angela Yu on 28/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {
    
    @IBOutlet weak var whiteLabel: UILabel!
    
    @IBOutlet weak var softNudeLabel: UILabel!
    
    @IBOutlet weak var roseNudeLabel: UILabel!
    
    @IBOutlet weak var emeraldLabel: UILabel!
    
    var count: Int8 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
    }
    
    @IBAction func whiteStepper(_ sender: UIStepper) {
        
        stepperValueChanged(sender)
        
    }
    
    @IBAction func softNudeStepper(_ sender: UIStepper) {
        
        stepperValueChanged1(sender)
    }
    
    @IBAction func roseNudeStepper(_ sender: UIStepper) {
        
        stepperValueChanged2(sender)
    }
    
    @IBAction func emeraldStepper(_ sender: UIStepper) {
    
        stepperValueChanged3(sender)
    }
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        whiteLabel.text = String(format: "%.0f", sender.value)
        _ = Int8(sender.value)
    }
    @IBAction func stepperValueChanged1(_ sender: UIStepper) {
        softNudeLabel.text = String(format: "%.0f", sender.value)
        _ = Int8(sender.value)
    }
    @IBAction func stepperValueChanged2(_ sender: UIStepper) {
        roseNudeLabel.text = String(format: "%.0f", sender.value)
        _ = Int8(sender.value)
    }
    @IBAction func stepperValueChanged3(_ sender: UIStepper) {
        emeraldLabel.text = String(format: "%.0f", sender.value)
        _ = Int8(sender.value)
    }
}
