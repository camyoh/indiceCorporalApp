//
//  Calcular.swift
//  IndiceMasaCorporaApp
//
//  Created by Andres Mendieta on 6/26/22.
//

import Foundation

struct Calcular {
    private var imc: Float?
    
    mutating func calcularIMC(altura: Float, peso: Float) { imc = peso/pow(altura, 2) }
    
    func obtenerIMC() -> String { String(format: "%.1f", imc ?? 0.0) }
}
