//
//  DetailedInfoViewController.swift
//  EnemyLossesApp
//
//  Created by Софія Ксенофонтова  on 06.07.2022.
//

import UIKit

class DetailedInfoViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet private weak var dayNumb: UILabel!
    @IBOutlet private weak var date: UILabel!
    @IBOutlet private weak var personnelButton: UIButton!
    @IBOutlet private weak var equipmentButton: UIButton!
    @IBOutlet private weak var mainView: UIView!
    @IBOutlet private weak var personnelStack: UIStackView!
    @IBOutlet private weak var equipmentStack: UIStackView!

    // MARK: - Labels to update data in Personnel Stack

    @IBOutlet private weak var personnelLabel: UILabel!
    @IBOutlet private weak var powLabel: UILabel!

    // MARK: - Labels to update data in Equipment Stack

    @IBOutlet private weak var aircraftLabel: UILabel!
    @IBOutlet private weak var helicopterLabel: UILabel!
    @IBOutlet private weak var tankLabel: UILabel!
    @IBOutlet private weak var apcLabel: UILabel!
    @IBOutlet private weak var fieldArtilleryLabel: UILabel!
    @IBOutlet private weak var mrlLabel: UILabel!
    @IBOutlet private weak var militaryAutoLabel: UILabel!
    @IBOutlet private weak var fuelTankLabel: UILabel!
    @IBOutlet private weak var droneLabel: UILabel!
    @IBOutlet private weak var navalShipLabel: UILabel!
    @IBOutlet private weak var aawLabel: UILabel!

    @IBOutlet private weak var specialEquipmentLabel: UILabel!

    @IBOutlet private weak var srbmSystemLabel: UILabel!
    @IBOutlet private weak var vehiclesAndFuelTanksLabel: UILabel!

    @IBOutlet private weak var cruiseMissilesLabel: UILabel!

    // MARK: - Actions

    @IBAction func showPersonnelLosses(_ sender: Any) {
        self.personnelButton.backgroundColor = UIColor(named: "PIXEL")
        self.personnelStack.isHidden = false
        self.equipmentStack.isHidden = true
        self.equipmentButton.backgroundColor = UIColor(named: "Accent1")
    }

    @IBAction func showEquipmentLosses(_ sender: Any) {
        self.equipmentButton.backgroundColor = UIColor(named: "PIXEL")
        self.equipmentStack.isHidden = false
        self.personnelStack.isHidden = true
        self.personnelButton.backgroundColor = UIColor(named: "Accent1")
    }

    // MARK: - Properties

    var losses: MergedLosses?

    // MARK: - Lifecycle
    override func viewDidLoad() {

        if let day = self.losses?.day {
            self.dayNumb.text = "\(day)"
        }

        self.date.text = self.losses?.date
        self.personnelLabel.text = self.losses?.personnel
        self.powLabel.text = self.losses?.pow
        self.aircraftLabel.text = self.losses?.aircraft
        self.helicopterLabel.text = self.losses?.helicopter
        self.tankLabel.text = self.losses?.tank
        self.apcLabel.text = self.losses?.apc
        self.fieldArtilleryLabel.text = self.losses?.fieldArtillery
        self.mrlLabel.text = self.losses?.mrl
        self.militaryAutoLabel.text = self.losses?.militaryAuto
        self.fuelTankLabel.text = self.losses?.fuelTank
        self.droneLabel.text = self.losses?.drone
        self.navalShipLabel.text = self.losses?.navalShip
        self.aawLabel.text = self.losses?.antiAircraftWarfare
        self.specialEquipmentLabel.text = self.losses?.specialEquipment
        self.srbmSystemLabel.text = self.losses?.srmb
        self.vehiclesAndFuelTanksLabel.text = self.losses?.vehiclesAndFuelTanks

        self.cruiseMissilesLabel.text = self.losses?.cruiseMissiles

        self.personnelStack.isHidden = true
        self.equipmentStack.isHidden = true

        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
