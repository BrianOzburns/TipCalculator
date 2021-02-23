//
//  SettingsViewController.swift
//  Prework
//
//  Created by Brian Ozawa Burns on 2/22/21.
//

import UIKit

class SettingsViewController: UIViewController {


    @IBOutlet weak var switchLabel: UILabel!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    //public var completionHandler: ((Bool?) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func segmentControlTest(_ sender: Any) {
        /*
        let vc = storyboard?.instantiateViewController(identifier: "main_vc") as! ViewController
        */
        
        if segmentControl.selectedSegmentIndex == 0 {
            switchLabel.text = "Couldn't get this to work :)"

            
            /*
            let gradientLayer = CAGradientLayer()
            // Set the size of the layer to be equal to the size of the display
            gradientLayer.frame = view.bounds
            // Set an array of Core Graphics colors (whatever these are haha) to create the gradient
            gradientLayer.colors = [UIColor(red: 88/255, green: 51/255, blue: 197/255, alpha: 1).cgColor, UIColor(red: 102/255, green: 102/255, blue: 240/255, alpha: 1).cgColor, UIColor.white.cgColor]
            
            gradientLayer.shouldRasterize = true
            // Apply the gradient to the backgroundGradient
            vc.backgroundGradient.layer.insertSublayer(gradientLayer, at: 0)
            */
            
        }
        else {
            switchLabel.text = "I wish this switch did something"
        
            /*
            let gradientLayer = CAGradientLayer()
            // Set the size of the layer to be equal to the size of the display
            gradientLayer.frame = view.bounds
            // Set an array of Core Graphics colors (whatever these are haha) to create the gradient
            gradientLayer.colors = [UIColor(red: 200/255, green: 51/255, blue: 87/255, alpha: 1).cgColor, UIColor(red: 200/255, green: 102/255, blue: 50/255, alpha: 1).cgColor, UIColor.white.cgColor]
            
            gradientLayer.shouldRasterize = true
            // Apply the gradient to the backgroundGradient
            vc.backgroundGradient.layer.insertSublayer(gradientLayer, at: 0)
            */
        
            
        }
        
    }
    
    

}
