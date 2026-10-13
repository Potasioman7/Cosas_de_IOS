//
//  BanxicoService.swift
//  ISSC_511_Banxico
//
//  Created by LIC-N1 on 12/10/26.
//

import Foundation

final class BanxicoService{
    func obtenerPrecioDolar() async throws -> Dato{
        let endpoint = "\(APIConfig.baseURL)/series/SF43718/datos/oportuno?token=\(APIConfig.banxicoToken)"
        //Paso 1 - convertir el endpoint a formato URL
        guard let url = URL(string: endpoint) else{
            throw URLError(.badURL)
        }
        //Paso 2 - Ejecutamos la llamada a la api
        let (data, _) = try await URLSession.shared.data(from: url)
        
        //Paso 3 - Decodificar la respuesta
        let decoder = JSONDecoder()
        let response = try decoder.decode(BanxicoResponse.self, from: data)
        
        guard let dato = response.bmx.series.first?.datos.first else{
            throw URLError(.cannotParseResponse)
        }
        return dato
        }
    
    }

