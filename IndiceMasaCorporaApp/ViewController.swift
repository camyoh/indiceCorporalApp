//
//  ViewController.swift
//  IndiceMasaCorporaApp
//
//  Created by Andres Mendieta on 6/26/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func alturaCambio(_ sender: UISlider) {
        print(String(format: "%.2f", sender.value))
    }
    
    @IBAction func pesoCambio(_ sender: UISlider) {
        print(Int(sender.value))
    }
    
}

