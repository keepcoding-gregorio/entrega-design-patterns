//
//  DetailViewModel.swift
//  TheSimpsonsAppPatterns
//
//  Created by Gonzalo Gregorio on 08/10/2023.
//

import Foundation

final class DetailViewModel: DetailViewModelProtocol {
    
    private weak var viewDelegate: DetailViewProtocol?
    
    private var character: CharacterModel?
    
    init(viewDelegate: DetailViewProtocol? = nil, character: CharacterModel?) {
        self.viewDelegate = viewDelegate
        self.character = character
    }
    
    // MARK: Detail View Model implementation
    func onViewLoaded() {
        guard let character else { return }
        loadCharacter(character: character)
    }
    
    private func loadCharacter(character: CharacterModel) {
        viewDelegate?.updateView(character: character)
    }
    
}
