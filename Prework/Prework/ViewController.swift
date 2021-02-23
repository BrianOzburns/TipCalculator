//
//  ViewController.swift
//  Prework
//
//  Created by Brian Ozawa Burns on 2/20/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak public var backgroundGradient: UIView!
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    @IBOutlet weak var tipControlSlider: UISlider!
    @IBOutlet weak var tipPercentLabel: UILabel!
    @IBOutlet weak var billAmountLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var navBarLabel: UILabel!
    @IBOutlet weak var horizontalLine: UIView!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.billAmountTextField.keyboardType = UIKeyboardType.decimalPad
        billAmountTextField.keyboardAppearance = UIKeyboardAppearance.dark
        
        
        // Create a gradient layer
        let gradientLayer = CAGradientLayer()
        // Set the size of the layer to be equal to the size of the display
        gradientLayer.frame = view.bounds
        // Set an array of Core Graphics colors (whatever these are haha) to create the gradient
        gradientLayer.colors = [UIColor(red: 88/255, green: 51/255, blue: 197/255, alpha: 1).cgColor, UIColor(red: 102/255, green: 102/255, blue: 240/255, alpha: 1).cgColor, UIColor.white.cgColor]
        
        gradientLayer.shouldRasterize = true
        // Apply the gradient to the backgroundGradient
        backgroundGradient.layer.insertSublayer(gradientLayer, at: 0)
        
        // Align text in text field to right
        billAmountTextField.textAlignment = .right
        
        // Set color of horizontalLine
        self.horizontalLine.backgroundColor = UIColor.white
        
        // Set color of all text to white
        tipAmountLabel.textColor = UIColor.white
        totalLabel.textColor = UIColor.white
        billAmountLabel.textColor = UIColor.white
        tipLabel.textColor = UIColor.white
        tipPercentLabel.textColor = UIColor.white
        totalAmountLabel.textColor = UIColor.white
        
        billAmountTextField.textColor = UIColor(red: 35/255, green: 10/255, blue: 120/255, alpha: 1)

        // navigation bar style
        navBarLabel.textColor = UIColor(red: 88/255, green: 51/255, blue: 197/255, alpha: 1)
        self.navigationItem.titleView = navBarLabel
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1)
        UINavigationBar.appearance().barTintColor = UIColor.white
        UINavigationBar.appearance().tintColor = UIColor.white
        UINavigationBar.appearance().isTranslucent = false
        
        
    }
    
    
    @IBAction func calcTip(_ sender: Any) {
        // Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Get total tip by multiplying tip * tipPercentage
        let tipPercentage = Int(tipControlSlider.value)
        let tip = Double(tipPercentage) / 100 * bill
        let total = bill + tip
        
        // Update tip percent label
        tipPercentLabel.text = String(Int(tipControlSlider.value)) + "%"
        
        
        // Update tip amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Update total amount
        totalAmountLabel.text = String(format: "$%.2f", total)
    }

}

