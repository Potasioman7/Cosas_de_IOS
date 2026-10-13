//
//  DollarViewModel.swift
//  ISSC_511_Banxico
//
//  Created by LIC-N1 on 12/10/26.
//

import Foundation
import Combine

enum EstadoDolar{
    case subio
    case bajo
    case igual
}

final class DollarViewModel: ObservableObject {
    
    @Published var precio = "--"
    @Published var fecha = ""
    @Published var cargando = false
    @Published var estado: EstadoDolar = .igual
    
    private let service = BanxicoService()
    private var ultimoPrecio: Double?
    var precioDouble: Double?{
        Double(precio)
    }
    
    func consultar() async{
        cargando = true
        
        do{
            let dolar = try await service.obtenerPrecioDolar()
            let nuevoValor = Double(dolar.dato) ?? 0
            if let anterior = ultimoPrecio{
                if nuevoValor > anterior{
                    estado = .subio
                }else if nuevoValor < anterior{
                    estado = .bajo
                }else{
                    estado = .igual
                }
            }
            ultimoPrecio = nuevoValor
            precio = dolar.dato
            fecha = dolar.fecha
        }catch{
            
        }
        cargando = false
        
    }
}
