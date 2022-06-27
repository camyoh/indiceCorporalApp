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
    
    var valorIMC: String?
    var consejo: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelIMC.text = valorIMC
        view.backgroundColor = color
        labelConsejo.text = consejo

    }
    @IBAction func recalcularPresionado(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
