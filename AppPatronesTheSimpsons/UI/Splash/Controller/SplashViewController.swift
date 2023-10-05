//
//  SplashViewController.swift
//  AppPatronesTheSimpsons
//
//  Created by Manuel Cazalla Colmenero on 4/10/23.
//

import UIKit

//MARK: - PROTOCOLO
protocol SplashViewProtocol: AnyObject {
    func navigateTostartingScreen()
    func activityLoading(_ activity: Bool)
}

//MARK: - CLASE
class SplashViewController : UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    var conectViewModel: SplashViewModelProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        conectViewModel = SplashViewModel(viewDelegate: self)
        conectViewModel?.viewsAreLoaded()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        activityIndicator.stopAnimating()
    }
    
}
    
//MARK: - EXTENSION

extension SplashViewController: SplashViewProtocol {
    // CARGAR ACTIVITY INDICATOR
   
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
    func navigateTostartingScreen() {
        let startingScreen = StartingScreenTableViewController()
        navigationController?.setViewControllers([startingScreen], animated: true)
        
    }
}
   
   
        
       




