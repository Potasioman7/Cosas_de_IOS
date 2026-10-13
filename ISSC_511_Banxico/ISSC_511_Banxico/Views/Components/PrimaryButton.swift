//
//  PrimaryButton.swift
//  ISSC_511_Banxico
//
//  Created by LIC-N1 on 12/10/26.
//

import SwiftUI

struct PrimaryButton: View {
    let titulo : String
    let cargando: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action){
            HStack{
            if cargando == true{
                ProgressView().tint(.gray)
            }else{
                Image(systemName: "arrow.clockwise")
                Text(titulo).bold()
            }
        }
            .frame(maxWidth: .infinity)
            .padding()
    }
        .buttonStyle(.borderedProminent)
        .controlSize(.large)
        .disabled(cargando)

}

        
}

#Preview {
    PrimaryButton(titulo: "Consultar", cargando: false, action: {})
    PrimaryButton(titulo: "Consultar", cargando: true, action: {})
        
}
