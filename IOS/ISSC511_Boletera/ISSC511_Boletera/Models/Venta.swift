//
//  Venta.swift
//  ISSC511_Boletera
//
//  Created by LIC-N1 on 29/09/26.
//

import Foundation
import SwiftData

@Model
class Venta{
    var nombreCliente: String
    var cantidadBoletos: Int
    var fecha: Date
    
    init(nombreCliente: String = "John", cantidadBoletos: Int, fecha: Date = Date()){
        self.nombreCliente = nombreCliente
        self.cantidadBoletos = cantidadBoletos
        self.fecha = fecha
        
    }
}
