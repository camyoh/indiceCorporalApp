//
//  ViewController.swift
//  IndiceMasaCorporaApp
//
//  Created by Andres Mendieta on 6/26/22.
//

import UIKit

class CalcularViewController: UIViewController {
    @IBOutlet weak var labelAltura: UILabel!
    @IBOutlet weak var labelPeso: UILabel!
    @IBOutlet weak var sliderAltura: UISlider!
    @IBOutlet weak var sliderPeso: UISlider!
    
    var calcular = Calcular()
    
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
        
        calcular.calcularIMC(altura: altura, peso: peso)
        
        performSegue(withIdentifier: "irAResultado", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "irAResultado" {
            let resultViewController = segue.destination as! ResultViewController
            resultViewController.valorIMC =  calcular.obtenerIMC()
        }
    }
}

