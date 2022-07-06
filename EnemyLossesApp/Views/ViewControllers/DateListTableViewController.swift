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
    
    @IBOutlet private weak var searchBar: UISearchBar!
    
    
    
    // MARK: Properties
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        
        
        DataRepositorySingleton.shared.prepareMergedData()
      
        super.viewDidLoad()

        self.dateListTable.delegate = self
        self.dateListTable.dataSource = self
    
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return DataRepositorySingleton.shared.equipmentData.count
        
    }
    
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
////
////        let cell = tableView.dequeueReusableCell(withIdentifier: Const.cellReuseId, for: indexPath) as! PostTableViewCell
////
////        cell.selectionStyle = .none
////        cell.config(from: PostRepositorySingleton.shared.currentPosts[indexPath.row])
////        cell.delegate = self
////        cell.delegateVC = self
////
////        return cell
//    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
//
//        self.selectedPost = PostRepositorySingleton.shared.currentPosts[indexPath.row]
//        self.performSegue(withIdentifier: Const.segueFromPostsToOneDetailed, sender: self)
//
    }
    
    
}

//extension DateListTableViewController:  UISearchResultsUpdating {
//    func updateSearchResults(for searchController: UISearchController) {
//        <#code#>
//    }
//
//
    
    
//}
