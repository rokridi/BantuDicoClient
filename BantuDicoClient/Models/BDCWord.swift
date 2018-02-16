//
//  BDCWord.swift
//  BantuDicoClient
//
//  Created by Mohamed Aymen Landolsi on 16/02/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation

public struct BDCWord {
    let identifier: Int
    let word: String
    let language: String
}

internal extension BDCWord {
    
    init(word: BDClientWord) {
        identifier = word.identifier
        self.word = word.word
        language = word.language
    }
}
