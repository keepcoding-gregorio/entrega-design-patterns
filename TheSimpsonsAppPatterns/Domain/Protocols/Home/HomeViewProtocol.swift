//
//  HomeViewProtocol.swift
//  TheSimpsonsAppPatterns
//
//  Created by Gonzalo Gregorio on 08/10/2023.
//

import Foundation

protocol HomeViewProtocol: AnyObject {
    func navigateToDetail( with data: DetailCharacterModel? )
    func updateViews()
}
