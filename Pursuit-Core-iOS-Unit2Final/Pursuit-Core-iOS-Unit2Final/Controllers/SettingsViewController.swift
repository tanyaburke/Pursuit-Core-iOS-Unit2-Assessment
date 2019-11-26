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
        alphaV = 1.0
                tempRedV = redV
                tempGreenV = greenV
                tempBlueV = blueV
        tempAlphaV = alphaV
        
        
        view.backgroundColor = UIColor(red: CGFloat(redV)/CGFloat(255), green: CGFloat(greenV)/CGFloat(255), blue: CGFloat(blueV)/CGFloat(255), alpha: alphaV)
        
    }
    func configureStepper() {
       alphaStepper.minimumValue = 1.0
       alphaStepper.maximumValue = 0.0
       alphaStepper.stepValue = 0.1
       
       // default start value
        alphaStepper.value = Double(alphaV)
     }
    func configureRedSlider() {
      redSlider.minimumValue = 0
      redSlider.maximumValue = 255
//        redSlider.value = Double(redV)
    }
    func configureGreenSlider() {
      greenSlider.minimumValue = 0
      greenSlider.maximumValue = 255
//      greenSlider.value = 2012
    }
    func configureBlueSlider() {
  blueSlider.minimumValue = 0
           blueSlider.maximumValue = 255
      //      blueSlider.value = 2012
    }
    
    
    @IBAction func reset(_ sender: UIButton) {
        view.alpha = alphaV
        view.backgroundColor = UIColor(red: CGFloat(redV)/CGFloat(255), green: CGFloat(greenV)/CGFloat(255), blue: CGFloat(blueV)/CGFloat(255), alpha: alphaV)
        
    }
    
    @IBAction func redSlider(_ sender: UISlider) {
        sender.value =
            Float(tempRedV ?? redV )
        tempRedV = CGFloat(sender.value)
        redValue.text = tempRedV.description
        view.backgroundColor = UIColor(red: CGFloat(tempRedV)/CGFloat(255), green: CGFloat(tempGreenV)/CGFloat(255), blue: CGFloat(tempBlueV)/CGFloat(255), alpha: alphaV)
        
    }
    
    @IBAction func greenSlider(_ sender: UISlider) {
        
        sender.value = Float(tempGreenV ?? greenV)
        tempGreenV = CGFloat(sender.value)
        greenValue.text = tempGreenV.description
        view.backgroundColor = UIColor(red: CGFloat(tempRedV)/CGFloat(255), green: CGFloat(tempGreenV)/CGFloat(255), blue: CGFloat(tempBlueV)/CGFloat(255), alpha: alphaV)
    }
    
    @IBAction func blueSlider(_ sender: UISlider) {
        
        sender.value = Float(tempBlueV ?? blueV)
        tempBlueV = CGFloat(sender.value)
        blueValue.text = tempBlueV.description
        view.backgroundColor = UIColor(red: CGFloat(tempRedV)/CGFloat(255), green: CGFloat(tempGreenV)/CGFloat(255), blue: CGFloat(tempBlueV)/CGFloat(255), alpha: alphaV)
    }
    
}
