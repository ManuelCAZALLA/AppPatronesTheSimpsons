//
//  SplashViewModel.swift
//  AppPatronesTheSimpsons
//
//  Created by Manuel Cazalla Colmenero on 4/10/23.
//

import Foundation

//MARK: - PROTOCOLO
protocol SplashViewModelProtocol {
    func viewsAreLoaded()
}

//MARK: - CLASE
final class SplashViewModel {
   
    private weak var viewDelegate: SplashViewProtocol?
    
    init(viewDelegate: SplashViewProtocol?) {
        self.viewDelegate = viewDelegate
    }
    
    private func loadData() {
        viewDelegate?.activityLoading(true)
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(4)) { [weak self] in
            self?.viewDelegate?.activityLoading(false)
            self?.viewDelegate?.navigateToStartingScreen()
            
        }
    }
}

//MARK: - EXTENSION
extension SplashViewModel: SplashViewModelProtocol {
    func viewsAreLoaded() {
        loadData()
    }
    
    
}
