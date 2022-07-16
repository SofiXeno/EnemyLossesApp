//
//  DateTableViewCell.swift
//  EnemyLossesApp
//
//  Created by Софія Ксенофонтова  on 06.07.2022.
//

import UIKit

class DateTableViewCell: UITableViewCell {

    // MARK: - IBOutlets
    @IBOutlet private weak var dayNumb: UILabel!
    @IBOutlet private weak var date: UILabel!

    // MARK: - Lifecycle
    func config(from dto: PersonnelLossesDto) {
        self.dayNumb.text = String(dto.day)
        self.date.text = dto.date

    }

}
