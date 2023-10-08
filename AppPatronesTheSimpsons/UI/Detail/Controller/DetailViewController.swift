//
//  DetailViewController.swift
//  AppPatronesTheSimpsons
//
//  Created by Manuel Cazalla Colmenero on 5/10/23.
//

import UIKit

// MARK: - PROTOCOL
protocol DetailViewControllerProtocol: AnyObject {
    func updateView(data: DataModel?)
}

//MARK: - CLASE
class DetailViewController: UIViewController {
    
    var conectDetailViewModel: DetailViewModelProtocol?
    
    //MARK: - IBOUTLET
   
    @IBOutlet weak var descriptionDetail: UITextView!
    @IBOutlet weak var nameDetail: UILabel!
    @IBOutlet weak var imageDetail: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        conectDetailViewModel?.fetchData()
        
       
    }
    
    private func update(name: String?) {
        nameDetail.text = name ?? ""
    }
    private func update(image: String?)  {
        imageDetail.image = UIImage(named: image ?? "")
    }
    private func update(description: String?) {
        descriptionDetail.text = description ?? ""
    }

// MARK: -  EXTENSION
}
extension DetailViewController: DetailViewControllerProtocol {
    
    func updateView(data: DataModel?) {
        guard let data = data else {return}
        update(name: data.name )
        update(image: data.image )
        update(description: data.description)
    }
    
    
}
