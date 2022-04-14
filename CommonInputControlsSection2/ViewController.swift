//
//  ViewController.swift
//  CommonInputControlsSection2
//
//  Created by Mathew Soto on 4/13/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var iLoveSwiftLabel: UILabel!
    var reallys = ""
    @IBOutlet var mySlider: UISlider!
    @IBOutlet var mySwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func updateTextLabel(_ sender: Any) {
        reallys += "really "
        iLoveSwiftLabel.text = "I \(reallys)love Swift"
    }
    
    @IBAction func switchToggled(_ sender: UISwitch) {
        if sender.isOn {
            view.backgroundColor = .white
        } else {
            view.backgroundColor = .black
        }
    }
    
    @IBAction func valueChanged(_ sender: UISlider) {
        view.alpha = CGFloat(sender.value)
        
    }
    
    @IBAction func userPressedReturn(_ sender: UITextField) {
        if let text = sender.text {
            print("Return: " + text)
        }
    }
    
    @IBAction func userEdited(_ sender: UITextField) {
        if let text = sender.text {
            print("Edit: " + text)
        }
    }
    
    @IBAction func showControlValues() {
        print("The button was pressed!")
        
        print(mySwitch.isOn)
        print(mySlider.value)
    }
    
}

