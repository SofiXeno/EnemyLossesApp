//
//  Consts.swift
//  EnemyLossesApp
//
//  Created by Софія Ксенофонтова  on 04.07.2022.

//  Class for json data processing

import Foundation

class DataRepositorySingleton {

    enum FileNames: String {
        case equipmentData = "russia_losses_equipment"
        case personnelData = "russia_losses_personnel"

    }

    var equipmentData: [EquipmentLossesDto] = []
    var personnelData: [PersonnelLossesDto] = []

    var currentDataInTable: [PersonnelLossesDto] = []

    var mainMergedData: [MergedLosses] = []

    static let shared = DataRepositorySingleton()

    private init() {}

    func readFromFile<T: Decodable>(nameOfFile: String, arrayToWriteTo: inout [T]) {

        do {

            if let path = Bundle.main.url(forResource: nameOfFile, withExtension: "json") {

                let data = Data(String(decoding: try Foundation.Data(contentsOf: path), as: UTF8.self).replacingOccurrences(of: "NaN", with: "0").utf8)

                arrayToWriteTo = try JSONDecoder().decode([T].self, from: data)

            }

        } catch {
            print("Failed to read JSON data:", String(describing: error))

        }

    }

    func writeDataToArrays() {

        self.readFromFile(nameOfFile: FileNames.equipmentData.rawValue, arrayToWriteTo: &self.equipmentData)
        self.readFromFile(nameOfFile: FileNames.personnelData.rawValue, arrayToWriteTo: &self.personnelData)

    }

}
