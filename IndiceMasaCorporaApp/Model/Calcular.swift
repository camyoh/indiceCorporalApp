//
//  Calcular.swift
//  IndiceMasaCorporaApp
//
//  Created by Andres Mendieta on 6/26/22.
//

import UIKit

struct Calcular {
    private var imc: IMC?
    
    mutating func calcularIMC(altura: Float, peso: Float) {
        let valorIMC = peso/pow(altura, 2)
        let colorAzul = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        let colorVerde = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        let colorRojo = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        
        if valorIMC < 18.5 {
            imc = IMC(valor: valorIMC, consejo: "Come más tortas", color: colorAzul )
        } else if valorIMC < 24.9 {
            imc = IMC(valor: valorIMC, consejo: "Buen estado físico", color: colorVerde )
        } else {
            imc = IMC(valor: valorIMC, consejo: "Come menos tortas", color: colorRojo )
        }
        
    }
    
    func obtenerIMC() -> String { String(format: "%.1f", imc?.valor ?? 0.0) }
    
    func darConsejo() -> String { imc?.consejo ?? "Sin consejo" }
    
    func obtenerColor() -> UIColor { imc?.color ?? UIColor.clear }
}
