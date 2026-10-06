//
//  VentasTab.swift
//  ISSC511_Boletera
//
//  Created by LIC-N1 on 28/09/26.
//

import SwiftUI
import SwiftData

struct VentasTab: View {
    //Declaramos la instancia para acceder al ORM de swiftdata
    @Environment(\.modelContext) private var context
    
    @State private var nombre = ""
    @State private var cantidad = 1
    
    
    var body: some View {
        ZStack(){
            LinearGradient(colors:[.fondo2, .fondo1],
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            VStack(spacing: 20){
                Spacer()
                Text("Venta de boletos")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                
                VStack(){
                    Text("Completa el formulario")
                    TextField("Nombre del cliente",
                              text: $nombre)
                    .textFieldStyle(.roundedBorder)
                    Stepper("Cantidad: \(cantidad)",
                            value: $cantidad,
                            in: 1...10)
                        .buttonStyle(.borderedProminent)
                    Button("Registrar venta"){
                        guardarVenta()
                    }.buttonStyle(.borderedProminent)
                        .tint(.purple)
                }.padding()
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(color: Color.red, radius: 10)
                    .padding()
                Spacer()
            }
        }.ignoresSafeArea()
    }
    
    
    
    func guardarVenta(){
        //Generar un objetoa almacenar
        let nuevaVenta = Venta(
            nombreCliente: nombre,
            cantidadBoletos: cantidad
        )
        
        context.insert(nuevaVenta)
        nombre = ""
        cantidad = 1
    }
}

#Preview {
    VentasTab()
}
