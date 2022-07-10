//
//  Consts.swift
//  EnemyLossesApp
//
//  Created by Софія Ксенофонтова  on 04.07.2022.
//

import Foundation

class DataRepositorySingleton {

    enum FileNames: String {
        case equipmentData = "russia_losses_equipment"
        case personnelData = "russia_losses_personnel"

    }

    var equipmentData: [EquipmentLossesDto] = []
    var personnelData: [PersonnelLossesDto] = []

    var mainMergedData: [MergedLosses] = []

    static let shared = DataRepositorySingleton()

    private init() {}

    //    let pathForEquipment = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent(DataRepositorySingleton.FileNames.EquipmentData.rawValue)
    //
    //    let pathForPersonnel = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent(DataRepositorySingleton.FileNames.PersonnelData.rawValue)
    //
    //
    func readFromFile<T: Decodable>(nameOfFile: String, arrayToWriteTo: inout [T]) {

        do {

            print("READ \(nameOfFile)")

            if let path = Bundle.main.url(forResource: nameOfFile, withExtension: "json") {

                // let data = try Foundation.Data(contentsOf: path2)

                // let str = String(decoding: try Foundation.Data(contentsOf: path2), as: UTF8.self)
                let data = Data(String(decoding: try Foundation.Data(contentsOf: path), as: UTF8.self).replacingOccurrences(of: "NaN", with: "0").utf8)

                // print("strrrrr     ", String(decoding: data, as: UTF8.self))

                arrayToWriteTo = try JSONDecoder().decode([T].self, from: data)

                print("arrayToWriteTo   ", arrayToWriteTo)

            }

        } catch {
            print("Failed to read JSON data:", String(describing: error))

        }

        // return arrayToWriteTo

    }

    func writeDataToArrays() {

        self.readFromFile(nameOfFile: FileNames.equipmentData.rawValue, arrayToWriteTo: &self.equipmentData)

        self.readFromFile(nameOfFile: FileNames.personnelData.rawValue, arrayToWriteTo: &self.personnelData)

//        print("EQUIPMENT    ", self.equipmentData)
//        print("PERSONNEL    ", self.personnelData)
    }

}
