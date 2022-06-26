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
    @IBOutlet weak var sliderAltura: UISlider!
    @IBOutlet weak var sliderPeso: UISlider!
    
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
    
    @IBAction func calcularPresionado(_ sender: UIButton) {
        let altura = sliderAltura.value
        let peso = sliderPeso.value
        let imc = peso/pow(altura, 2)
        print(imc)
    }
}

