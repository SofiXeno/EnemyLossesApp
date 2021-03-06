//
//  PersonnelLoosesDto.swift
//  EnemyLossesApp
//
//  Created by Софія Ксенофонтова  on 03.07.2022.
//

import Foundation

struct PersonnelLossesDto: Decodable {

    let date: String
    let day: Int
    let personnel: Int
    let personnelAditional: String
    let pow: Int

    init() {

        self.date = ""
        self.day = 0
        self.personnel = 0
        self.personnelAditional = ""
        self.pow = 0

    }

  init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        self.date = try values.decode(String.self, forKey: .date)
        self.day = try values.decode(Int.self, forKey: .day)
        self.personnel = try values.decode(Int.self, forKey: .personnel)
        self.personnelAditional = try values.decode(String.self, forKey: .personnelAditional)
        self.pow = try values.decode(Int.self, forKey: .pow)

    }

      enum CodingKeys: String, CodingKey {
          case date
          case day
          case personnel
          case personnelAditional = "personnel*"
          case pow = "POW"
      }

}
