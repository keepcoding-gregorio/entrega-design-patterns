//
//  SplashViewProtocol.swift
//  TheSimpsonsAppPatterns
//
//  Created by Gonzalo Gregorio on 07/10/2023.
//

import Foundation

protocol SplashViewProtocol: AnyObject {
    func showLoading( _ show: Bool)
    func navigateToHome()
}
