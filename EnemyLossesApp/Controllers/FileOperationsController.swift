//
//  FileOperations.swift
//  EnemyLossesApp
//
//  Created by Софія Ксенофонтова  on 04.07.2022.
//

import Foundation


class FileOperationsController{
    
//    var readPersonnel: [PersonnelLossesDto] = []
//    var readEquipment: [EquipmentLossesDto] = []
//
//    static let shared = FileOperationsSingleton()
//
//    private init() {}
 
    func readFromFile<T: Decodable>(path : URL, _ : T) -> [T] {
        
        var readData : [T] = []
        
        print("READ \(path)")
        do{
            let data = try Foundation.Data(contentsOf: path)
            
            readData = try JSONDecoder().decode([T].self, from: data)
            
        }
        catch {
            print("Failed to read JSON data: \(error.localizedDescription)")
        }
        
        return readData
        
    }
    
}
