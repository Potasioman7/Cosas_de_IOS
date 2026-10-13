//
//  PrecioCard.swift
//  ISSC_511_Banxico
//
//  Created by LIC-N1 on 12/10/26.
//

import SwiftUI

struct PrecioCard: View {
    let precio: String
    let fecha: String
    var body: some View {
        VStack(spacing: 12){
            Text("USD / MXN")
                .font(.headline)
                .foregroundStyle(.secondary)
            Text("$\(precio)")
                .font(.system(size: 44, weight: .bold))
            Text(fecha)
                .font(.caption)
                .foregroundStyle(.gray)
        }
        .frame(maxWidth: .infinity)
        .padding(30)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 24))
        .shadow(radius: 10)
        .padding()
    }
}

#Preview {
    PrecioCard(
        precio: "16.00", fecha: "01/09/2026"
    )
}
