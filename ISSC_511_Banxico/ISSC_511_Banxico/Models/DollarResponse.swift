//
//  DollarResponse.swift
//  ISSC_511_Banxico
//
//  Created by LIC-N1 on 12/10/26.
//

import Foundation

struct BanxicoResponse: Codable{
    let bmx: BMX
}

struct BMX: Codable{
    let series: [Serie]
}

struct Serie: Codable{
    let datos: [Dato]
}

struct Dato: Codable{
    let fecha: String
    let dato: String
}
