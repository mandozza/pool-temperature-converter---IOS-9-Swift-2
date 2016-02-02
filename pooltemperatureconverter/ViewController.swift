//
//  ViewController.swift
//  pooltemperatureconverter
//
//  Created by Jeremy Josey on 2016-02-02.
//  Copyright © 2016 Jeremy Josey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var lblFahrenheit: UILabel!
    @IBOutlet weak var lblCelcius: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    
    
    @IBAction func sliderAction(sender: AnyObject) {
        convert()
        
    }
    
    
    func convert(){
        
        let fahrenheit = slider.value;
        let celcius = ((fahrenheit - 32) / 1.8)
        
        updateLabels(fahrenheit,celcius: celcius)
        
    }

 
    func updateLabels(fahrenheit: Float, celcius: Float){
        lblFahrenheit.text = String(format: "%4.0f Fahrenheit", fahrenheit)
        lblCelcius.text = String(format: "%4.1f Celcius", celcius)
        
    }

}

