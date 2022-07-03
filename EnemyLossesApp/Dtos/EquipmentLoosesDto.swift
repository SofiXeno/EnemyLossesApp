//
//  EquipmentLoosesDto.swift
//  EnemyLossesApp
//
//  Created by Софія Ксенофонтова  on 03.07.2022.
//


import Foundation


struct EquipmentLoosesDto: Decodable {
    
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

    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        self.date = try values.decode(String.self, forKey: .date)
        self.day = try values.decode(Int.self, forKey: .day)
        self.aircraft = try values.decode(Int.self, forKey: .aircraft)
        self.helicopter = try values.decode(Int.self, forKey: .helicopter)
        self.tank = try values.decode(Int.self, forKey: .tank)
        self.apc = try values.decode(Int.self, forKey: .apc)
        self.fieldArtillery = try values.decode(Int.self, forKey: .fieldArtillery)
        self.mrl = try values.decode(Int.self, forKey: .mrl)
        self.militaryAuto = try values.decode(Int.self, forKey: .militaryAuto)
        self.fuelTank = try values.decode(Int.self, forKey: .fuelTank)
        self.drone = try values.decode(Int.self, forKey: .drone)
        self.navalShip = try values.decode(Int.self, forKey: .navalShip)
        self.antiAircraftWarfare = try values.decode(Int.self, forKey: .antiAircraftWarfare)

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
      }
    
    
    
}
