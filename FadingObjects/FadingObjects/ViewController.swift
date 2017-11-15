//
//  ViewController.swift
//  FadingObjects
//
//  Created by Gabriel Martinez on 2017-11-14.
//  Copyright © 2017 Gabriel Martinez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var segControl: UISegmentedControl!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var slider: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    } 

    @IBAction func fadeInBtn(_ sender: Any) {
        UIView.animate(withDuration: 1.0, animations: {
            
            self.label.alpha = 1
            self.segControl.alpha = 1
            self.button.alpha = 1
            
            
            
        })
    }
    
    @IBAction func fadeOutBtn(_ sender: Any) {
        self.label.alpha = 0
        self.segControl.alpha = 0
        self.button.alpha = 0
    }
    
     
    @IBAction func alphaSlider(_ sender: Any) {
        label.alpha = CGFloat(slider.value)
        button.alpha = CGFloat(slider.value)
        segControl.alpha = CGFloat(slider.value)
    }
    
    
    
    
    
    
    
}

