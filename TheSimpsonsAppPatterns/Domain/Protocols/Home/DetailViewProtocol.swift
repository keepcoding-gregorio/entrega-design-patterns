//
//  DetailViewProtocol.swift
//  TheSimpsonsAppPatterns
//
//  Created by Gonzalo Gregorio on 08/10/2023.
//

import Foundation

protocol DetailViewProtocol: AnyObject {
    func updateView(character: CharacterModel?)
}
