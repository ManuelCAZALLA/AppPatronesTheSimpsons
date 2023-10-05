//
//  StartingScreenViewModel.swift
//  AppPatronesTheSimpsons
//
//  Created by Manuel Cazalla Colmenero on 5/10/23.
//

import Foundation


//MARK: - PROTOCOLO
protocol StartingScreenViewModelProtocol {
    var dataCount: Int {get}
    func viewsAreLoaded()
    func data(at index: Int) -> DataModel?
    func itemSelected(at index: Int)
}

//MARK: - CLASE
final class StartingScreenViewModel {
    
    private weak var viewDelegate: StartingScreenProtocol?
    private var viewData = DataSimpsons()
    
    init(viewDelegate: StartingScreenProtocol?) {
        self.viewDelegate = viewDelegate
    }
    
    private func loadData() {
        viewData = sampleData
        viewDelegate?.updateViews()
        
    }
    
}

//MARK: - EXTENSION
extension StartingScreenViewModel: StartingScreenViewModelProtocol {
    func itemSelected(at index: Int) {
        guard let data = data(at: index) else {return}
        viewDelegate?.navigateToDetail(with: data)
        
    }
    
    func data(at index: Int) -> DataModel? {
        guard index < dataCount else {return nil}
        return viewData[index]
    }
    
    var dataCount: Int {
        viewData.count
    }
    
    func viewsAreLoaded() {
        loadData()
    }
    
    
}
