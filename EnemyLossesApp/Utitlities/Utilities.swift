//
//  Utilities.swift
//  EnemyLossesApp
//
//  Created by Софія Ксенофонтова  on 06.07.2022.
//

import Foundation
import UIKit

struct Utilities {

    // Function which prints current day looses + deference of previous and current day in braces, if this difference is less than 0 prints only current day looses
    static func printLoosesPerDay(current: Int, currAndPrevdifference: Int) -> String {

        switch currAndPrevdifference {
        case ...0:
            return "\(current)"
        default:
            return "\(current) (+\(currAndPrevdifference))"
        }

       }

    // From EquipmentLossesDto array find the dto with the save date as in PersonnelLossesDto
    static func findByDate(dto: PersonnelLossesDto, array: [EquipmentLossesDto]) -> EquipmentLossesDto {

    var temp = EquipmentLossesDto()

        if let dto = array.first(where: { $0.day == dto.day }) {
            temp = dto
        }

        return temp
    }

}
