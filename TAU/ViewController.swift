//
//  ViewController.swift
//  TAU
//
//  Created by Shashikant Jagtap on 09/02/2019.
//  Copyright © 2019 Shashikant Jagtap. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var welcomeToXCUITest: UILabel!
    
    @IBOutlet weak var enterCity: UILabel!
    
    @IBOutlet weak var cityValue: UITextField!
    
    @IBOutlet weak var thanksMessage: UILabel!
    
    @IBOutlet weak var TAUImage: UIImageView!
    
    
    @IBAction func enrollButton(_ sender: Any) {
        thanksMessage.isHidden = false
        
        if cityValue.text == "" {
            thanksMessage.text = "Please Enter City"
            thanksMessage.textColor = UIColor.red
        } else {
            thanksMessage.text = "Thanks for Joining!"
            thanksMessage.textColor = UIColor.green
            cityValue.text = ""
            
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        thanksMessage.isHidden = true
        //Looks for single or multiple taps.
             let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

            //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
            //tap.cancelsTouchesInView = false

            view.addGestureRecognizer(tap)
        }

        //Calls this function when the tap is recognized.
        @objc func dismissKeyboard() {
            //Causes the view (or one of its embedded text fields) to resign the first responder status.
            view.endEditing(true)
        }
}

