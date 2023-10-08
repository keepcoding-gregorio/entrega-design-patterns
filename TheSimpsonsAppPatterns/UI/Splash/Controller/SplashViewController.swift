//
//  SplashViewController.swift
//  TheSimpsonsAppPatterns
//
//  Created by Gonzalo Gregorio on 07/10/2023.
//

import UIKit

class SplashViewController: UIViewController, SplashViewProtocol {

    @IBOutlet weak var loadingIndicator: UIActivityIndicatorView!
    
    var viewModel: SplashViewModelProtocol?
    
    // MARK - View Controller implementation -
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel?.onViewsLoaded()
    }
    
    override func viewDidDisappear( _ animated: Bool ) {
        super.viewDidDisappear(animated)
        loadingIndicator.stopAnimating()
    }
    
    // MARK - Splash View implementation -
    func showLoading( _ show: Bool ) {
        switch show {
        case true where !loadingIndicator.isAnimating:
            loadingIndicator.startAnimating()
        case false where loadingIndicator.isAnimating:
            loadingIndicator.stopAnimating()
        default: break
        }
    }
    
    func navigateToHome() {
        let homeViewController = HomeTableViewController()
        navigationController?.setViewControllers([homeViewController], animated: true)
    }
}
