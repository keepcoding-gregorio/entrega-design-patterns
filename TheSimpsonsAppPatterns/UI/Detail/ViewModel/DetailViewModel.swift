//
//  DetailViewModel.swift
//  TheSimpsonsAppPatterns
//
//  Created by Gonzalo Gregorio on 08/10/2023.
//

import Foundation

final class DetailViewModel: DetailViewModelProtocol {
    
    private weak var viewDelegate: DetailViewProtocol?
    
    private var character: DetailCharacterModel?
    
    init(viewDelegate: DetailViewProtocol? = nil, character: DetailCharacterModel?) {
        self.viewDelegate = viewDelegate
        self.character = character
    }
    
    // MARK: Detail View Model implementation
    func onViewLoaded() {
        guard let character else {
            return
        }
        loadCharacter(character: character)
    }
    
    private func loadCharacter(character: DetailCharacterModel) {
        viewDelegate?.updateView(character: character)
    }
    
}
