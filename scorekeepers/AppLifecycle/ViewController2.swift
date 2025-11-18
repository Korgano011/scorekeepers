//
//  ViewController2.swift
//  ViewControllerLifecycle
//
//  Created by Angela Yu on 28/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var whitePicker: UIPickerView!
    
    @IBOutlet weak var softNudePicker: UIPickerView!
    
    @IBOutlet weak var roseNudePicker: UIPickerView!
    
    @IBOutlet weak var emeraldPicker: UIPickerView!
    
    let min = -500
    
    let max = 500
    
    @IBAction func goBack(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
     whitePicker.dataSource = self
    whitePicker.delegate = self
    whitePicker.selectRow(500, inComponent: 0, animated: true)
    softNudePicker.dataSource = self
    softNudePicker.delegate = self
    softNudePicker.selectRow(500, inComponent: 0, animated: true)
    roseNudePicker.dataSource = self
    roseNudePicker.delegate = self
    roseNudePicker.selectRow(500, inComponent: 0, animated: true)
    emeraldPicker.dataSource = self
    emeraldPicker.delegate = self
    emeraldPicker.selectRow(500, inComponent: 0, animated: true)
        label.text = ""
        
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

}
extension ViewController2: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return max - min + 1
    }
    
}
extension ViewController2: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let score = row + min
        return "\(score)"
    }
}
