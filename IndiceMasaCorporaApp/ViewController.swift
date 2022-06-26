//
//  ViewController.swift
//  IndiceMasaCorporaApp
//
//  Created by Andres Mendieta on 6/26/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelAltura: UILabel!
    @IBOutlet weak var labelPeso: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func alturaCambio(_ sender: UISlider) {
        labelAltura.text = String(format: "%.2f", sender.value) + " m"
    }
    
    @IBAction func pesoCambio(_ sender: UISlider) {
        labelPeso.text = "\(Int(sender.value)) Kg"
    }
    
}

