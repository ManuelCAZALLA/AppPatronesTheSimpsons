//
//  StartingScreenTableViewController.swift
//  AppPatronesTheSimpsons
//
//  Created by Manuel Cazalla Colmenero on 4/10/23.
//

import UIKit

//MARK: - PROTOCOLO
protocol StartingScreenProtocol: AnyObject{
    func navigateToDetail(with data: DataModel?)
    func updateViews()
    
}

// MARK: - CLASE
class StartingScreenTableViewController: UITableViewController {
    
   var connectViewModel: StartingScreenViewModelProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
        connectViewModel?.viewsAreLoaded()
     }
    
    private func registerCell() {
        tableView.register(
            UINib(nibName:"StartingScreenTableViewCell",
                  bundle: nil),
            forCellReuseIdentifier: "StartingScreenCell")
    }
    
   override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int
    {
        connectViewModel?.dataCount ?? 0
    }
    
    
    override func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: "StartingScreenCell",
            for: indexPath) as? StartingScreenTableViewCell else {
            return  UITableViewCell()
        }
        
        if let data = connectViewModel?.data(at: indexPath.row) {
            cell.updateViews(data: data)
        }
        
        return cell
}
    override func tableView(
        _ tableView: UITableView,
        didSelectRowAt indexPath: IndexPath)
    {
        connectViewModel?.itemSelected(at: indexPath.row)
    }
    }
// MARK: - EXTENSION
extension StartingScreenTableViewController: StartingScreenProtocol {
    func updateViews() {
        tableView.reloadData()
    }
    
    func navigateToDetail(with data: DataModel?) {
        let detailVC = DetailViewController()
        guard let data else {return}
        detailVC.conectDetailViewModel = DetailViewModel(viewData: data, viewDelegate: detailVC)
        navigationController?.pushViewController(detailVC, animated: true)
    }
    
}
    

   
