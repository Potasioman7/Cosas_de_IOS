//
//  Usuario.swift
//  ISSC511_Boletera
//
//  Created by LIC-N1 on 05/10/26.
//

import Foundation
import SwiftData

@Model
class Usuario{
    var UsuarioCuenta: String
    var ContraseñaCuenta: String
    var NombreCuenta: String
    var ApellidoCuenta: String
    var GeneroCuenta: String
    
    init(UsuarioCuenta: String = "Usuario", ContraseñaCuenta: String = "Contraseña", NombreCuenta: String = "John", ApellidoCuenta: String = "Doe", GeneroCuenta: String = "Másculino"){
        self.UsuarioCuenta = UsuarioCuenta
        self.ContraseñaCuenta = ContraseñaCuenta
        self.NombreCuenta = NombreCuenta
        self.ApellidoCuenta = ApellidoCuenta
        self.GeneroCuenta = GeneroCuenta
    }
}


