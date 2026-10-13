//
//  HistoryView.swift
//  ISSC_511_Banxico
//
//  Created by LIC-N1 on 13/10/26.
//

import SwiftUI
import SwiftData

struct HistoryView: View {
    
    @Environment(\.modelContext) private var context
    @Query(sort: \HistorialDolar.fecha,
           order: .reverse) private var historial: [HistorialDolar]
    
    var body: some View {
        NavigationStack{
            Group{
                if historial.isEmpty{
                    VistaVacia(
                        icon:"chart.line",
                        title: "Sin historial",
                        subtitle: "Cononsulta el dolar y guarda un registro")
                }else{
                    List{
                        ForEach(historial){
                            item in
                            HStack(){
                                VStack(spacing: 6){
                                    Text("$\(item.precio)")
                                        .font(.largeTitle)
                                    Text(item.fecha.formatted(
                                        date: .abbreviated,
                                        time: .shortened
                                    )).font(.caption
                                        .foregroundStyle(.secondary))
                                }
                            }
                        }
                    }
                }
            }
        }.navigationTitle("Historial")
    }
}

#Preview {
    HistoryView()
}
