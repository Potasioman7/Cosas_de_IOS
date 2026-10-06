//
//  ISSC511_BoleteraApp.swift
//  ISSC511_Boletera
//
//  Created by LIC-N1 on 28/09/26.
//

import SwiftUI
import SwiftData

@main
struct ISSC511_BoleteraApp: App {
    var body: some Scene {
        WindowGroup {
            LoginView()
        }.modelContainer(for: Venta.self)
    }
}
