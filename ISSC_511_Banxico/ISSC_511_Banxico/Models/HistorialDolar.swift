//
//  HistorialDolar.swift
//  ISSC_511_Banxico
//
//  Created by LIC-N1 on 13/10/26.
//

import Foundation
import SwiftData

@Model
final class HistorialDolar{
    var precio: Double
    var fecha: Date
    
    init(precio: Double, fecha: Date){
        self.precio = precio
        self.fecha = fecha
    }
}
