//
//  ModelData.swift
//  IntroCourse
//
//  Created by Oscar Chavez on 8/10/21.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    @Published var landmarks: [LandMark] = load("landmarkData.json")
}


func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else{
        fatalError("No se puedo acceder al \(filename) en el compiladao principal")
    }
    
    do{
        data = try Data(contentsOf: file)
    }catch{
        fatalError("No se pudo cargar la data desde el .json")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch{
        fatalError("No se pudo parsear el aarchivo \(filename)")
    }
    
}
