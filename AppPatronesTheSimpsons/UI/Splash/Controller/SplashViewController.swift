//
//  SplashViewController.swift
//  AppPatronesTheSimpsons
//
//  Created by Manuel Cazalla Colmenero on 4/10/23.
//

import UIKit

//MARK: - PROTOCOLO
protocol SplashViewProtocol: AnyObject {
    func activityLoading(_ activity: Bool)
    func navigateToStartingScreen()
}

//MARK: - CLASE
class SplashViewController : UIViewController {
    
    
    
    var conectViewModel: SplashViewModelProtocol?
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        conectViewModel?.viewsAreLoaded()
      }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        activityIndicator.stopAnimating()
    }
}
    
//MARK: - EXTENSION

extension SplashViewController: SplashViewProtocol {
    //  ACTIVITY INDICATOR
   func activityLoading(_ activity: Bool) {
        switch activity {
        case true where !activityIndicator.isAnimating:
            activityIndicator.startAnimating()
        case false where activityIndicator.isAnimating:
            activityIndicator.stopAnimating()
        default: break
            
        }
        
    }
    // NAVEGAR A LA PANTALLA DE INICIO
    func navigateToStartingScreen() {
        let startingScreen = StartingScreenTableViewController()
        startingScreen.connectViewModel = StartingScreenViewModel(viewDelegate: startingScreen)
        navigationController?.setViewControllers([startingScreen], animated: true)
        
    }
}
   
   
        
       




