//
//  CharacterProtocol.swift
//  TheSimpsonsAppPatterns
//
//  Created by Gonzalo Gregorio on 08/10/2023.
//

import Foundation

protocol CharacterProtocol {
    var image: String? { get }
    var name: String { get }
    var description: String { get }
}
