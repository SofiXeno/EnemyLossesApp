//
//  EquipmentLosses.swift
//  EnemyLossesApp
//
//  Created by Софія Ксенофонтова  on 04.07.2022.
//

import Foundation

class MergedLosses: Codable {

    let date: String
    let day: Int

    let personnel: String
    let personnelAditional: String
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

    let specialEquipment: String
    let srmb: String
    let vehiclesAndFuelTanks: String
    let cruiseMissiles: String

    init(currentPersonnelDto: PersonnelLossesDto,
         currentEquipmentDto: EquipmentLossesDto, previousPersonnelDto: PersonnelLossesDto,
         previousEquipmentDto: EquipmentLossesDto) {

        self.date = currentPersonnelDto.date
        self.day = currentPersonnelDto.day

        self.personnel = Utilities.printLoosesPerDay(current: currentPersonnelDto.personnel, currAndPrevdifference: currentPersonnelDto.personnel - previousPersonnelDto.personnel)
        
        self.personnelAditional = currentPersonnelDto.personnelAditional
        
        self.pow = Utilities.printLoosesPerDay(current: currentPersonnelDto.pow, currAndPrevdifference: currentPersonnelDto.pow - previousPersonnelDto.pow)

        self.aircraft = Utilities.printLoosesPerDay(current: currentEquipmentDto.aircraft, currAndPrevdifference: currentEquipmentDto.aircraft - previousEquipmentDto.aircraft)
        
        self.helicopter = Utilities.printLoosesPerDay(current: currentEquipmentDto.helicopter, currAndPrevdifference: currentEquipmentDto.helicopter - previousEquipmentDto.helicopter )
        
        self.tank = Utilities.printLoosesPerDay(current: currentEquipmentDto.tank, currAndPrevdifference: currentEquipmentDto.tank - previousEquipmentDto.tank)

        self.apc = Utilities.printLoosesPerDay(current: currentEquipmentDto.apc, currAndPrevdifference: currentEquipmentDto.apc - previousEquipmentDto.apc)
        
        self.fieldArtillery = Utilities.printLoosesPerDay(current: currentEquipmentDto.fieldArtillery, currAndPrevdifference: currentEquipmentDto.fieldArtillery - previousEquipmentDto.fieldArtillery)
        
        self.mrl = Utilities.printLoosesPerDay(current: currentEquipmentDto.mrl, currAndPrevdifference: currentEquipmentDto.mrl - previousEquipmentDto.mrl)
 
        self.militaryAuto = Utilities.printLoosesPerDay(current: currentEquipmentDto.militaryAuto, currAndPrevdifference: currentEquipmentDto.militaryAuto - previousEquipmentDto.militaryAuto)
        
        self.fuelTank = Utilities.printLoosesPerDay(current: currentEquipmentDto.fuelTank, currAndPrevdifference: currentEquipmentDto.fuelTank - previousEquipmentDto.fuelTank)
        
        self.drone = Utilities.printLoosesPerDay(current: currentEquipmentDto.drone, currAndPrevdifference: currentEquipmentDto.drone - previousEquipmentDto.drone)
        
        self.navalShip = Utilities.printLoosesPerDay(current: currentEquipmentDto.navalShip, currAndPrevdifference: currentEquipmentDto.navalShip - previousEquipmentDto.navalShip)
        
        self.antiAircraftWarfare = Utilities.printLoosesPerDay(current: currentEquipmentDto.antiAircraftWarfare, currAndPrevdifference: currentEquipmentDto.antiAircraftWarfare  - previousEquipmentDto.antiAircraftWarfare)
 
        self.specialEquipment = Utilities.printLoosesPerDay(current: currentEquipmentDto.specialEquipment, currAndPrevdifference: currentEquipmentDto.specialEquipment - previousEquipmentDto.specialEquipment)
   
        self.srmb = Utilities.printLoosesPerDay(current: currentEquipmentDto.srmb, currAndPrevdifference: currentEquipmentDto.srmb - previousEquipmentDto.srmb)
    
        self.vehiclesAndFuelTanks = Utilities.printLoosesPerDay(current: currentEquipmentDto.vehiclesAndFuelTanks, currAndPrevdifference: currentEquipmentDto.vehiclesAndFuelTanks - previousEquipmentDto.vehiclesAndFuelTanks)
        
        self.cruiseMissiles = Utilities.printLoosesPerDay(current: currentEquipmentDto.cruiseMissiles, currAndPrevdifference: currentEquipmentDto.cruiseMissiles - previousEquipmentDto.cruiseMissiles)
        
    }

 
}
