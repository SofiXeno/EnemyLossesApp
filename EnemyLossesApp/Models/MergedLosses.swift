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
         previousEquipmentDto: EquipmentLossesDto) {

        self.date = currentPersonnelDto.date
        self.day = currentPersonnelDto.day

        self.personnel = String(currentPersonnelDto.personnel) + Utilities.printLoosesPerDay(looses: (currentPersonnelDto.personnel - previousPersonnelDto.personnel))
        self.personnelAditional = currentPersonnelDto.personnelAditional
        self.pow = String(currentPersonnelDto.pow) + Utilities.printLoosesPerDay(looses: (currentPersonnelDto.pow - previousPersonnelDto.pow))

        self.aircraft = String(currentEquipmentDto.aircraft ?? 0) + Utilities.printLoosesPerDay(looses: (currentEquipmentDto.aircraft ?? 0) - (previousEquipmentDto.aircraft ?? 0))
        self.helicopter = String(currentEquipmentDto.helicopter ?? 0) + Utilities.printLoosesPerDay(looses: (currentEquipmentDto.helicopter ?? 0 ) - (previousEquipmentDto.helicopter ?? 0))
        self.tank = String(currentEquipmentDto.tank ?? 0) + Utilities.printLoosesPerDay(looses: (currentEquipmentDto.tank ?? 0 ) - (previousEquipmentDto.tank ?? 0))

        self.apc = String(currentEquipmentDto.apc ?? 0) + Utilities.printLoosesPerDay(looses: (currentEquipmentDto.apc ?? 0) - (previousEquipmentDto.apc ?? 0))

        self.fieldArtillery = String(currentEquipmentDto.fieldArtillery ?? 0) + Utilities.printLoosesPerDay(looses: (currentEquipmentDto.fieldArtillery ?? 0) - (previousEquipmentDto.fieldArtillery ?? 0))

        self.mrl = String(currentEquipmentDto.mrl ?? 0) + Utilities.printLoosesPerDay(looses: (currentEquipmentDto.mrl ?? 0) - (previousEquipmentDto.mrl ?? 0))

        self.militaryAuto = String(currentEquipmentDto.militaryAuto ?? 0) + Utilities.printLoosesPerDay(looses: (currentEquipmentDto.militaryAuto ?? 0) - (previousEquipmentDto.militaryAuto ?? 0))

        self.fuelTank = String(currentEquipmentDto.fuelTank ?? 0) + Utilities.printLoosesPerDay(looses: (currentEquipmentDto.fuelTank ?? 0) - (previousEquipmentDto.fuelTank ?? 0))

        self.drone = String(currentEquipmentDto.drone ?? 0) + Utilities.printLoosesPerDay(looses: (currentEquipmentDto.drone ?? 0) - (previousEquipmentDto.drone ?? 0))

        self.navalShip = String(currentEquipmentDto.navalShip ?? 0) + Utilities.printLoosesPerDay(looses: (currentEquipmentDto.navalShip ?? 0) - (previousEquipmentDto.navalShip ?? 0))

        self.antiAircraftWarfare = String(currentEquipmentDto.antiAircraftWarfare ?? 0) + Utilities.printLoosesPerDay(looses: (currentEquipmentDto.antiAircraftWarfare ?? 0) - (previousEquipmentDto.antiAircraftWarfare ?? 0))

        self.specialEquipment = String(currentEquipmentDto.specialEquipment ?? 0) + Utilities.printLoosesPerDay(looses: (currentEquipmentDto.specialEquipment ?? 0) - (previousEquipmentDto.specialEquipment ?? 0))

        self.srmb = String(currentEquipmentDto.srmb ?? 0) + Utilities.printLoosesPerDay(looses: (currentEquipmentDto.srmb ?? 0) - (previousEquipmentDto.srmb ?? 0))

        self.vehiclesAndFuelTanks = String(currentEquipmentDto.vehiclesAndFuelTanks ?? 0) + Utilities.printLoosesPerDay(looses: (currentEquipmentDto.vehiclesAndFuelTanks ?? 0) - (previousEquipmentDto.vehiclesAndFuelTanks ?? 0))

        self.cruiseMissiles = String(currentEquipmentDto.cruiseMissiles ?? 0) + Utilities.printLoosesPerDay(looses: (currentEquipmentDto.cruiseMissiles ?? 0) - (previousEquipmentDto.cruiseMissiles ?? 0))

    }

}
