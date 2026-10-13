//
//  DollarView.swift
//  ISSC_511_Banxico
//
//  Created by LIC-N1 on 12/10/26.
//

import SwiftUI

struct DollarView: View {
    @StateObject private var vm = DollarViewModel()
    var body: some View {
        VStack(spacing: 30){
            Text("Convertidor del dolar al día:")
                .font(.largeTitle.bold())
                .frame(maxWidth: .infinity, alignment: .center)
            PrecioCard(
                precio: vm.precio,
                fecha: vm.fecha
            )
            PrimaryButton(
                titulo: "Consultar",
                cargando: vm.cargando) {
                    Task{
                        await vm.consultar()
                    }
                }
        }
    }
}

#Preview {
    DollarView()
}
