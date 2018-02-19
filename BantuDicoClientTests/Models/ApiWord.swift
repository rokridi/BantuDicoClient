//
//  ApiWord.swift
//  BantuDicoClientTests
//
//  Created by Mohamed Aymen Landolsi on 19/02/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation
@testable import BantuDicoClient
@testable import BantuDicoAlamofireApiClient

struct ApiWord: BDClientWord  {
    var identifier: Int
    var word: String
}

extension ApiWord {
    
    init(word: BDAFWord) {
        identifier = word.identifier
        self.word = word.word
    }
}
