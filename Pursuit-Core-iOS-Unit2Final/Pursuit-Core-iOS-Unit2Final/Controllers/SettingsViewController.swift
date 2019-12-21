//
//  DetailViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Tanya Burke on 11/22/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var crayonName: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redValue: UILabel!
    
    @IBOutlet weak var greenValue: UILabel!
    
    @IBOutlet weak var blueValue: UILabel!
    
    @IBOutlet weak var alphaValue: UILabel!
    
    @IBOutlet weak var alphaStepper: UIStepper!
    
    
    var crayonColor: Crayon!
    
    var redV: CGFloat!
    var greenV: CGFloat!
    var blueV: CGFloat!
    var alphaV: CGFloat!
    var tempRedV: CGFloat!
    var tempGreenV: CGFloat!
    var tempBlueV: CGFloat!
    var tempAlphaV: CGFloat!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redV = CGFloat(crayonColor.red)
        greenV = CGFloat(crayonColor.green)
        blueV = CGFloat(crayonColor.blue)
        alphaV = 0.5
                tempRedV = redV
                tempGreenV = greenV
                tempBlueV = blueV
        tempAlphaV = alphaV
        
        crayonName.text = crayonColor.name
        view.backgroundColor = UIColor(red: CGFloat(redV)/CGFloat(255), green: CGFloat(greenV)/CGFloat(255), blue: CGFloat(blueV)/CGFloat(255), alpha: alphaV)
        redValue.text = "Red: \(redV.description)"
        greenValue.text = "Green: \(redV.description)"
        blueValue.text = "Blue: \(blueV.description)"
       configureStepper()
        
    }
    func configureStepper() {
         alphaStepper.minimumValue = 0
         alphaStepper.maximumValue = 1
        alphaStepper.stepValue = 0.1

     }
//    func configureRedSlider() {
//      redSlider.minimumValue = 0
//      redSlider.maximumValue = 255
//    }
//    func configureGreenSlider() {
//      greenSlider.minimumValue = 0
//      greenSlider.maximumValue = 255
//    }
//    func configureBlueSlider() {
//  blueSlider.minimumValue = 0
//           blueSlider.maximumValue = 255
//
//    }
    
    
    @IBAction func reset(_ sender: UIButton) {
        view.alpha = 1.0
        tempRedV = redV
        tempBlueV = blueV
        tempGreenV = greenV
        view.backgroundColor = UIColor(red: CGFloat(redV)/CGFloat(255),
                                       green: CGFloat(greenV)/CGFloat(255),
                                       blue: CGFloat(blueV)/CGFloat(255),
                                       alpha: alphaV)
        
        
    }
    
    @IBAction func redSlider(_ sender: UISlider) {
       
        tempRedV = CGFloat(sender.value)
        redValue.text = "Red: \(tempRedV.description)"
        
        view.backgroundColor = UIColor(red: CGFloat(tempRedV)/CGFloat(255),
                                       green: CGFloat(tempGreenV)/CGFloat(255),
                                       blue: CGFloat(tempBlueV)/CGFloat(255),
                                       alpha: alphaV)
        
    }
    
    @IBAction func greenSlider(_ sender: UISlider) {
        
        
        tempGreenV = CGFloat(sender.value)
        greenValue.text = "Green: \(tempGreenV.description)"
        view.backgroundColor = UIColor(red: CGFloat(tempRedV)/CGFloat(255),
                                       green: CGFloat(tempGreenV)/CGFloat(255),
                                       blue: CGFloat(tempBlueV)/CGFloat(255),
                                       alpha: alphaV)
    }
    
    @IBAction func blueSlider(_ sender: UISlider) {
        
        
        tempBlueV = CGFloat(sender.value)
        blueValue.text = "Blue: \(tempBlueV.description)"
        view.backgroundColor = UIColor(red: CGFloat(tempRedV)/CGFloat(255),
                                       green: CGFloat(tempGreenV)/CGFloat(255),
                                       blue: CGFloat(tempBlueV)/CGFloat(255),
                                       alpha: alphaV)
    }
    
    @IBAction func slidderAction(_ sender: Any) {
        alphaV = sender as? CGFloat
    }
    
}
