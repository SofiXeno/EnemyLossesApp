//
//  Consts.swift
//  EnemyLossesApp
//
//  Created by Софія Ксенофонтова  on 04.07.2022.
//

import Foundation

struct Consts{

    
 enum FileNames: String {
        case EquipmentData = "russia_losses_equipment.json"
        case PersonnelData = "russia_losses_personnel.json"

    }

    

    
    static let pathForEquipment = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent(Consts.FileNames.EquipmentData.rawValue)
    
    static let pathForPersonnel = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent(Consts.FileNames.PersonnelData.rawValue)
    


}
