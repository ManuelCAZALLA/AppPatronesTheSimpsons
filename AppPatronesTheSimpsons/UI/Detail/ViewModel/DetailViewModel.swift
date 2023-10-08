//
//  DetailViewModel.swift
//  AppPatronesTheSimpsons
//
//  Created by Manuel Cazalla Colmenero on 7/10/23.
//

import Foundation

//MARK: PROTOCOLO
protocol DetailViewModelProtocol {
    func fetchData()
}


// MARK: CLASE
final class DetailViewModel {
    
    var viewData: DataModel?
    private weak var viewDelegate: DetailViewControllerProtocol?
    
    init(viewData: DataModel? = nil, viewDelegate: DetailViewControllerProtocol? = nil) {
        self.viewData = viewData
        self.viewDelegate = viewDelegate
    }
    
    private func loadData() {
        viewDelegate?.updateView(data: viewData)
       
    }
   
}

   
       
//MARK: EXTENSION
extension DetailViewModel: DetailViewModelProtocol {
   
    func fetchData() {
       loadData()
        
    }
    
   
    
    
    
}
