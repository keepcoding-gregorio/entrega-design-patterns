//
//  SplashViewModel.swift
//  TheSimpsonsAppPatterns
//
//  Created by Gonzalo Gregorio on 07/10/2023.
//

import Foundation

final class SplashViewModel: SplashViewModelProtocol {
    
    private weak var viewDelegate: SplashViewProtocol?
    
    init(viewDelegate: SplashViewProtocol?) {
        self.viewDelegate = viewDelegate
    }
    
    //MARK: - ViewModel Implementation -
    func onViewsLoaded() {
        loadData()
    }
    
    //MARK: - Splash handler -
    private func loadData() {
        viewDelegate?.showLoading(true)
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3)) { [weak self] in
            self?.viewDelegate?.showLoading(false)
            self?.viewDelegate?.navigateToHome()
        }
    }
    
}
