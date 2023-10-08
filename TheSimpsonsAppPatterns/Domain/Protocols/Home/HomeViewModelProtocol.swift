//
//  HomeViewModelProtocol.swift
//  TheSimpsonsAppPatterns
//
//  Created by Gonzalo Gregorio on 08/10/2023.
//

import Foundation

protocol HomeViewModelProtocol {
    
    var totalCount: Int { get }
    
    func onViewsLoaded()
    func getCharacter( at index: Int) -> DetailCharacterModel?
    func onItemSelected( at index: Int)
    
}
