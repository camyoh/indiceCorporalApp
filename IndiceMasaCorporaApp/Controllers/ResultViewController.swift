//
//  ResultViewController.swift
//  IndiceMasaCorporaApp
//
//  Created by Andres Mendieta on 6/26/22.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var labelIMC: UILabel!
    @IBOutlet weak var labelConsejo: UILabel!
    
    var valorIMC = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelIMC.text = valorIMC

    }
    @IBAction func recalcularPresionado(_ sender: UIButton) {
    }
}
