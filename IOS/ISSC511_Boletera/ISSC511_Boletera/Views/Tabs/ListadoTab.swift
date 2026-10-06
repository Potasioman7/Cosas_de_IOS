//
//  ListadoTab.swift
//  ISSC511_Boletera
//
//  Created by LIC-N1 on 28/09/26.
//

import SwiftUI
import SwiftData

struct ListadoTab: View {
    @Environment(\.modelContext) private var context
    
    @Query private var Ventas: [Venta]
    
    var body: some View {
        VStack(spacing: 20){
            ZStack(){
                LinearGradient(colors:[.fondo2, .fondo1],
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
                .frame(height: 150)
                
                Text("Lista de ventas")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(.white)
                    .padding()
                
                List{
                    ForEach(Ventas){
                        Venta in
                        VStack(
                            alignment: .leading
                        ){
                            Text(Venta.nombreCliente)
                                .font(.headline)
                            Text("Boletos: \(Venta.cantidadBoletos)" )
                                .font(.subheadline)
                            Text(Venta.fecha, style: .date)
                                .font(.caption)
                                .foregroundColor(.gray)
                            
                        }
                    }
                }
                
            }
        }.ignoresSafeArea()
    }
}

#Preview {
    ListadoTab()
}
