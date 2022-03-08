//
//  ViewController.swift
//  UIDATEpicker
//
//  Created by MAC OS on 07/03/22.
//

import UIKit

class ViewController: UIViewController,UIColorPickerViewControllerDelegate {

    
    @IBOutlet weak var datePicker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker.locale = .current
        datePicker.date = Date()
        datePicker.preferredDatePickerStyle = .compact
        datePicker.addTarget(self, action: #selector(dateSelected), for: .valueChanged)
        // Do any additional setup after loading the view.
    }
    
    
func btnseg(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0: datePicker.preferredDatePickerStyle = .compact
        case 1: datePicker.preferredDatePickerStyle = .inline
        case 2: datePicker.preferredDatePickerStyle = .wheels
        default: break
        }
    }
    @objc
    func dateSelected(){
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        
        print(dateFormatter.string(from: datePicker.date))
       // lbl.text = DateFormatter()
    }
    @IBAction func btn(_ sender: Any) {
        //sender.layer.cornerRadius = 4
        let colorPicker = UIColorPickerViewController()
        colorPicker.delegate = self
        present(colorPicker, animated: true)
    }
    func colorPickerViewControllerDidSelectColor(_ viewController: UIColorPickerViewController) {
        let color = viewController.selectedColor
        view.backgroundColor = color
    }
    func colorPickerViewControllerDidFinish(_ viewController: UIColorPickerViewController) {
        let color = viewController.selectedColor
        view.backgroundColor = color
        
    
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

