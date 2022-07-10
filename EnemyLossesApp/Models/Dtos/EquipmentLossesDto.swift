//
//  EquipmentLoosesDto.swift
//  EnemyLossesApp
//
//  Created by Софія Ксенофонтова  on 03.07.2022.
//

import Foundation

struct EquipmentLossesDto: Decodable {

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

    let specialEquipment: Int
    let srmb: Int
    let vehiclesAndFuelTanks: Int
    let cruiseMissiles: Int

    init() {

        self.date = ""
        self.day = 0
        self.aircraft = 0
        self.helicopter = 0
        self.tank = 0
        self.apc = 0
        self.fieldArtillery = 0
        self.mrl = 0
        self.militaryAuto = 0
        self.fuelTank = 0
        self.drone = 0
        self.navalShip = 0
        self.antiAircraftWarfare = 0
        self.specialEquipment = 0
        self.srmb = 0
        self.vehiclesAndFuelTanks = 0
        self.cruiseMissiles = 0

    }

   init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)

        self.date = try values.decode(String.self, forKey: .date)

       if let dayTemp = try? values.decode(Int.self, forKey: .day) {
           self.day = dayTemp
       } else {
           self.day = 0
       }

       if let aircraftTemp = try? values.decode(Int.self, forKey: .aircraft) {
           self.aircraft = aircraftTemp
       } else {
           self.aircraft = 0
       }

       if let helicopterTemp = try? values.decode(Int.self, forKey: .helicopter) {
           self.helicopter = helicopterTemp
       } else {
           self.helicopter = 0
       }

       if let tankTemp = try? values.decode(Int.self, forKey: .tank) {
           self.tank = tankTemp
       } else {
           self.tank = 0
       }

        if let apcTemp = try? values.decode(Int.self, forKey: .apc) {
            self.apc = apcTemp
        } else {
            self.apc = 0
        }

        if let fieldArtilleryTemp = try? values.decode(Int.self, forKey: .fieldArtillery) {
            self.fieldArtillery = fieldArtilleryTemp
        } else {
            self.fieldArtillery = 0
        }

        if let mrlTemp = try? values.decode(Int.self, forKey: .mrl) {
            self.mrl = mrlTemp
        } else {
            self.mrl = 0
        }

        if let militaryAutoTemp = try? values.decode(Int.self, forKey: .militaryAuto) {
            self.militaryAuto = militaryAutoTemp
        } else {
            self.militaryAuto = 0
        }

        if let fuelTankTemp = try? values.decode(Int.self, forKey: .fuelTank) {
            self.fuelTank = fuelTankTemp
        } else {
            self.fuelTank = 0
        }

        if let droneTemp = try? values.decode(Int.self, forKey: .drone) {
            self.drone = droneTemp
        } else {
            self.drone = 0
        }

        if let navalShipTemp = try? values.decode(Int.self, forKey: .navalShip) {
            self.navalShip = navalShipTemp
        } else {
            self.navalShip = 0
        }

        if let antiAircraftWarfareTemp = try? values.decode(Int.self, forKey: .antiAircraftWarfare) {
            self.antiAircraftWarfare = antiAircraftWarfareTemp
        } else {
            self.antiAircraftWarfare = 0
        }

       if let specialEquipmentTemp = try? values.decodeIfPresent(Int.self, forKey: .specialEquipment) {
           self.specialEquipment = specialEquipmentTemp
       } else {
           self.specialEquipment = 0
       }
       if let srmbTemp = try? values.decodeIfPresent(Int.self, forKey: .srmb) {
           self.srmb = srmbTemp
       } else {
           self.srmb = 0
       }
       if let vehiclesAndFuelTanksTemp = try? values.decodeIfPresent(Int.self, forKey: .vehiclesAndFuelTanks) {
           self.vehiclesAndFuelTanks = vehiclesAndFuelTanksTemp
       } else {
           self.vehiclesAndFuelTanks = 0
       }
       if let cruiseMissilesTemp = try? values.decodeIfPresent(Int.self, forKey: .cruiseMissiles) {
           self.cruiseMissiles = cruiseMissilesTemp
       } else {
           self.cruiseMissiles = 0
       }

    }

      enum CodingKeys: String, CodingKey {

          case date
          case day
          case aircraft
          case helicopter
          case tank
          case apc = "APC"
          case fieldArtillery = "field artillery"
          case mrl = "MRL"
          case militaryAuto = "military auto"
          case fuelTank = "fuel tank"
          case drone
          case navalShip = "naval ship"
          case antiAircraftWarfare = "anti-aircraft warfare"

          case specialEquipment = "special equipment"
          case srmb = "mobile SRBM system"
          case vehiclesAndFuelTanks = "vehicles and fuel tanks"
          case cruiseMissiles = "cruise missiles"
      }
//
//    public static func ==(lhs: EquipmentLossesDto, rhl: PersonnelLossesDto) -> Bool {
//
//      lhs.day == rhl.day
//        
//    }

}
