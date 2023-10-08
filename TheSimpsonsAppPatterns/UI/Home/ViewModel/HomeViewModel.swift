//
//  HomeViewModel.swift
//  TheSimpsonsAppPatterns
//
//  Created by Gonzalo Gregorio on 08/10/2023.
//

import Foundation


final class HomeViewModel: HomeViewModelProtocol {
    
    private weak var viewDelegate: HomeViewProtocol?
    private var viewData = CharactersDataProvider()
    
    init(viewDelegate: HomeViewProtocol? = nil) {
        self.viewDelegate = viewDelegate
    }
    
    private func loadData() {
        viewData = sampleCharacters
        viewDelegate?.updateViews()
    }

    // MARK: - Home View Model implementation -
    func onItemSelected(at index: Int) {
        guard let character = getCharacter(at: index) else {
            return
        }
        viewDelegate?.navigateToDetail(with: character)
    }
    
    
    func getCharacter(at index: Int) -> CharacterModel? {
        guard index < totalCount else {
            return nil
        }
        return viewData[index]
    }
    
    var totalCount: Int {
        viewData.count
    }
    
    func onViewsLoaded() {
        loadData()
    }
    
    
}
