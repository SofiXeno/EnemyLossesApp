//
//  PersonnelLoosesDto.swift
//  EnemyLossesApp
//
//  Created by Софія Ксенофонтова  on 03.07.2022.
//



import Foundation

struct PersonnelLossesDto: Decodable, Equatable {
    
    let date: String
    let day: Int
    let personnel: Int
    let personnel_: String
    let pow: Int
    
    
    
  init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        self.date = try values.decode(String.self, forKey: .date)
        self.day = try values.decode(Int.self, forKey: .day)
        self.personnel = try values.decode(Int.self, forKey: .personnel)
        self.personnel_ = try values.decode(String.self, forKey: .personnel_)
        self.pow = try values.decode(Int.self, forKey: .pow)
        
       
    }
    
      enum CodingKeys: String, CodingKey {
          case date
          case day
          case personnel
          case personnel_ = "personnel*"
          case pow = "POW"
      }
    
    
    
}
