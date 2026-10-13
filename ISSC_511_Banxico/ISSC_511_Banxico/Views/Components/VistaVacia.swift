//
//  VistaVacia.swift
//  ISSC_511_Banxico
//
//  Created by LIC-N1 on 13/10/26.
//

import SwiftUI

struct VistaVacia: View {
    let icon: String
    let title: String
    let subtitle: String
    var body: some View {
        VStack(spacing: 16){
            Image(systemName: icon)
                .font(.system(size: 60))
                .foregroundStyle(.gray)
            Text(title)
                .font(.title2.bold())
            Text(subtitle)
                .foregroundStyle(.secondary)
        }
    }
}

#Preview {
    VistaVacia(
        icon: "person.3",
        title: "sin historial",
        subtitle: "Consulta el dolar y guarda un registro"
    )
}
