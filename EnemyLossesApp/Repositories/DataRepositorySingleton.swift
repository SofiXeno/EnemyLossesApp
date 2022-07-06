//
//  Consts.swift
//  EnemyLossesApp
//
//  Created by Софія Ксенофонтова  on 04.07.2022.
//

import Foundation

class DataRepositorySingleton{
    
    enum FileNames: String {
           case EquipmentData = "russia_losses_equipment.json"
           case PersonnelData = "russia_losses_personnel.json"

       }
    
    var equipmentData: [EquipmentLossesDto] = []
    var personnelData: [PersonnelLossesDto] = []
    
    var mainMergedData : [MergedLosses] = []

    static let shared = DataRepositorySingleton()
    
    private init() {}
    
 
    let pathForEquipment = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent(DataRepositorySingleton.FileNames.EquipmentData.rawValue)
    
    let pathForPersonnel = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent(DataRepositorySingleton.FileNames.PersonnelData.rawValue)
    
    
    func readFromFile<T: Decodable>(path : URL, arrayToWriteTo: inout [T]) {
           
          // var readData : [T] = []
           
           print("READ \(path)")
           do{
               let data = try Foundation.Data(contentsOf: path)
               
               arrayToWriteTo = try JSONDecoder().decode([T].self, from: data)
               
           }
           catch {
               print("Failed to read JSON data: \(error.localizedDescription)")
           }
           
          // return arrayToWriteTo
           
       }
    
    
    
    
    func prepareMergedData(){
    
        
        self.readFromFile(path: self.pathForEquipment, arrayToWriteTo: &self.equipmentData)
        
        self.readFromFile(path: self.pathForPersonnel, arrayToWriteTo: &self.personnelData)
  
        print("EQUIPMENT    ", self.equipmentData)
        print("PERSONNEL    ", self.personnelData)
        
//        for i in self.equipmentData{
//
//            for j in self.personnelData{
//
//                guard let temp = Utilities.mergeLooses(equipment: i, personnel: j)
//
//                else{break}
//
//
//
//                self.mainMergedData.append(temp)
//
//            }
//        }
//
//
//        print("MERGED    ", self.mainMergedData)
  
    }
    
    

}
