//
//  EquipmentLosses.swift
//  EnemyLossesApp
//
//  Created by Софія Ксенофонтова  on 04.07.2022.
//

import Foundation

class EquipmentLosses: Codable{
    
    
    let date: String
    let day: Int
    let aircraft: Int
    let helicopter: Int
    let tank: Int
    let apc: Int
    let fieldArtillery: Int
    let mrl: Int
    let militaryAuto: Int
    let fuelTank: Int
    let drone: Int
    let navalShip: Int
    let antiAircraftWarfare: Int

    
    init(dto: EquipmentLossesDto){
        
        self.date = dto.date
        self.day = dto.day
        self.aircraft = dto.aircraft
        self.helicopter = dto.helicopter
        self.tank = dto.tank
        self.apc = dto.apc
        self.fieldArtillery = dto.fieldArtillery
        self.mrl = dto.mrl
        self.militaryAuto = dto.militaryAuto
        self.fuelTank = dto.fuelTank
        self.drone = dto.drone
        self.navalShip = dto.navalShip
        self.antiAircraftWarfare = dto.antiAircraftWarfare
        
        
    }
    
    
    
}
