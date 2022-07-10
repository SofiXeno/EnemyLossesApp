//
//  Utilities.swift
//  EnemyLossesApp
//
//  Created by Софія Ксенофонтова  on 06.07.2022.
//

import Foundation
import UIKit

struct Utilities {

    static func printLoosesPerDay(looses: Int) -> String {" (+\(looses))"}

    static func findByDate(dto: PersonnelLossesDto, array: [EquipmentLossesDto]) -> EquipmentLossesDto {

    var temp = EquipmentLossesDto()

        if let dto = array.first(where: { $0.day == dto.day }) {
            temp = dto
        }

        return temp
    }

//    static func mergeLooses(equipment: EquipmentLossesDto, personnel: PersonnelLossesDto) -> MergedLosses? {
//        
//        if (equipment.day == personnel.day) {
//            
//           return MergedLosses(personnelDto: personnel, equipmentDto: equipment)
//            
//        }
//        
//        return nil
//    }

}
