//
//  DateTableViewController.swift
//  EnemyLossesApp
//
//  Created by Софія Ксенофонтова  on 04.07.2022.
//

import UIKit

class DateListTableViewController: UITableViewController {

    // MARK: - IBOutlets
    @IBOutlet private weak var dateListTable: UITableView!

    // MARK: Properties
    
    var searchController: UISearchController!
    var selectedIndex = IndexPath(row: -1, section: 0)

    private var previousDayEquipmentLooses = EquipmentLossesDto()
    private var previousDayPersonnelLooses = PersonnelLossesDto()

    private var currentDayEquipmentLooses = EquipmentLossesDto()
    private var currentDayPersonnelLooses = PersonnelLossesDto()

    // MARK: - Lifecycle
    override func viewDidLoad() {

        DataRepositorySingleton.shared.writeDataToArrays()

        createSearchController()
        
        super.viewDidLoad()

        self.dateListTable.delegate = self
        self.dateListTable.dataSource = self

    }
    
    
    func createSearchController(){
        
        
        self.searchController = UISearchController(searchResultsController: nil)
        
        self.searchController.searchResultsUpdater = self
        self.searchController.searchBar.sizeToFit()
        self.searchController.searchBar.searchTextField.textColor = UIColor(named: "Accent3")
        self.searchController.searchBar.barTintColor = UIColor(named: "MilitaryColor")
        self.dateListTable.tableHeaderView = searchController.searchBar
        
        
        self.searchController.definesPresentationContext = true
        
    }
    
    

    // MARK: Prepare for segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! DetailedInfoViewController
        
        if (self.currentDayPersonnelLooses.day == 2){
            destinationVC.losses = MergedLosses(currentPersonnelDto: self.currentDayPersonnelLooses, currentEquipmentDto: self.currentDayEquipmentLooses)
            
        }
        
        else{
        destinationVC.losses = MergedLosses(currentPersonnelDto: self.currentDayPersonnelLooses, currentEquipmentDto: self.currentDayEquipmentLooses, previousPersonnelDto: self.previousDayPersonnelLooses, previousEquipmentDto: self.previousDayEquipmentLooses)
        }
        

        print("selected data   \(self.currentDayEquipmentLooses)")

    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return DataRepositorySingleton.shared.personnelData.count

    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

    let cell = tableView.dequeueReusableCell(withIdentifier: Consts.cellReuseId, for: indexPath) as! DateTableViewCell

        cell.config(from: DataRepositorySingleton.shared.personnelData[indexPath.row])

         return cell
   }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {


        self.currentDayPersonnelLooses = DataRepositorySingleton.shared.personnelData[indexPath.row]
        
        self.currentDayEquipmentLooses = Utilities.findByDate(dto: currentDayPersonnelLooses, array: DataRepositorySingleton.shared.equipmentData)

        if (indexPath.row != 0) {
            self.previousDayPersonnelLooses = DataRepositorySingleton.shared.personnelData[indexPath.row-1]
            
            self.previousDayEquipmentLooses = Utilities.findByDate(dto: previousDayPersonnelLooses, array: DataRepositorySingleton.shared.equipmentData)
        }
        self.performSegue(withIdentifier: Consts.segueForDetailedView, sender: self)

    }

}

extension DateListTableViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {

        guard let searchText = searchController.searchBar.text else {
            return
        }

        DataRepositorySingleton.shared.personnelData = DataRepositorySingleton.shared.personnelData.filter({$0.date.contains(searchText.lowercased())})

        self.dateListTable.reloadData()

        if !DataRepositorySingleton.shared.personnelData.isEmpty { self.dateListTable.scrollToRow(at: IndexPath(row: 0, section: 0), at: .none, animated: true) }

    }

}
