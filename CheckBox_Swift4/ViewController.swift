//
//  ViewController.swift
//  CheckBox_Swift4
//
//  Created by DeEp KapaDia on 26/05/18.
//  Copyright © 2018 DeEp KapaDia. All rights reserved.
//

import UIKit

class ViewController: UIViewController,BEMCheckBoxDelegate {

    @IBOutlet weak var Deep: BEMCheckBox!
    
    @IBOutlet weak var bawa: BEMCheckBox!
    
    @IBOutlet weak var Manan: BEMCheckBox!
    
    @IBOutlet weak var Rashi: BEMCheckBox!
    
    
    @IBOutlet weak var Mama: BEMCheckBox!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Deep.delegate = self
        
        Deep.onAnimationType = .stroke
        
    }

    func didTap(_ checkBox: BEMCheckBox) {
        
        if checkBox.tag == 1{
            
            bawa.on = true
            Mama.isEnabled = false
            Rashi.isEnabled = false
            Manan.isEnabled = false
            
            
        }else if checkBox.tag == 3 {
            
            Manan.on = true
            Mama.isEnabled = false
            Rashi.isEnabled = false
            Deep.isEnabled = true
            bawa.isEnabled = false
            
        }
        
    }

}

