//
//  HomeView.swift
//  ISSC_511_Banxico
//
//  Created by LIC-N1 on 13/10/26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView{
            DollarView()
                .tabItem{
                    Label("Dolar hoy", systemImage: "Dollar.circle.fill")
                }
            HistoryView()
                .tabItem{
                    Label("Historial", systemImage: "clock.fill")
                }
        }
    }
}

#Preview {
    HomeView()
}
