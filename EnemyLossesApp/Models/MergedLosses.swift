//
//  EquipmentLosses.swift
//  EnemyLossesApp
//
//  Created by Софія Ксенофонтова  on 04.07.2022.
//

import Foundation

class MergedLosses: Codable{
    
    
    let date: String
    let day: Int
    
    let personnel: String
    let personnel_: String
    let pow: String
    
    let aircraft: String
    let helicopter: String
    let tank: String
    let apc: String
    let fieldArtillery: String
    let mrl: String
    let militaryAuto: String
    let fuelTank: String
    let drone: String
    let navalShip: String
    let antiAircraftWarfare: String
    
    
// MARK: - Looses of orcs per day
//    let personnelPerDay: Int
//    let powPerDay: Int
//
//    let aircraftPerDay: Int
//    let helicopterPerDay: Int
//    let tankPerDay: Int
//    let apcPerDay: Int
//    let fieldArtilleryPerDay: Int
//    let mrlPerDay: Int
//    let militaryAutoPerDay: Int
//    let fuelTankPerDay: Int
//    let dronePerDay: Int
//    let navalShipPerDay: Int
//    let antiAircraftWarfarePerDay: Int
    

    
    init(currentPersonnelDto: PersonnelLossesDto,
         currentEquipmentDto: EquipmentLossesDto, previousPersonnelDto: PersonnelLossesDto,
         previousEquipmentDto: EquipmentLossesDto){
        
        self.date = currentPersonnelDto.date
        self.day = currentPersonnelDto.day
        
        self.personnel = String(currentPersonnelDto.personnel) + Utilities.printLoosesPerDay(looses: currentPersonnelDto.personnel - previousPersonnelDto.personnel)
        self.personnel_ = currentPersonnelDto.personnel_
        self.pow = String(currentPersonnelDto.pow) + Utilities.printLoosesPerDay(looses: currentPersonnelDto.pow - previousPersonnelDto.pow)
        
        
        self.aircraft = String(currentEquipmentDto.aircraft) + Utilities.printLoosesPerDay(looses: currentEquipmentDto.aircraft - previousEquipmentDto.aircraft)
        self.helicopter = String(currentEquipmentDto.helicopter) + Utilities.printLoosesPerDay(looses: currentEquipmentDto.helicopter - previousEquipmentDto.helicopter)
        self.tank = String(currentEquipmentDto.tank) + Utilities.printLoosesPerDay(looses: currentEquipmentDto.tank - previousEquipmentDto.tank)
        self.apc = String(currentEquipmentDto.apc) + Utilities.printLoosesPerDay(looses: currentEquipmentDto.apc - previousEquipmentDto.apc)
        self.fieldArtillery = String(currentEquipmentDto.fieldArtillery) + Utilities.printLoosesPerDay(looses: currentEquipmentDto.fieldArtillery - previousEquipmentDto.fieldArtillery)
        self.mrl = String(currentEquipmentDto.mrl) + Utilities.printLoosesPerDay(looses: currentEquipmentDto.mrl - previousEquipmentDto.mrl)
        self.militaryAuto = String(currentEquipmentDto.militaryAuto) + Utilities.printLoosesPerDay(looses: currentEquipmentDto.militaryAuto - previousEquipmentDto.militaryAuto)
        self.fuelTank = String(currentEquipmentDto.fuelTank) + Utilities.printLoosesPerDay(looses: currentEquipmentDto.fuelTank - previousEquipmentDto.fuelTank)
        self.drone = String(currentEquipmentDto.drone) + Utilities.printLoosesPerDay(looses: currentEquipmentDto.drone - previousEquipmentDto.drone)
        self.navalShip = String(currentEquipmentDto.navalShip) + Utilities.printLoosesPerDay(looses: currentEquipmentDto.navalShip - previousEquipmentDto.navalShip)
        self.antiAircraftWarfare = String(currentEquipmentDto.antiAircraftWarfare) + Utilities.printLoosesPerDay(looses: currentEquipmentDto.antiAircraftWarfare - previousEquipmentDto.antiAircraftWarfare)
        
        
        



        
    }
    
    
    
}
