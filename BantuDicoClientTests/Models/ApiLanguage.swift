//
//  ApiLanguage.swift
//  BantuDicoClientTests
//
//  Created by Mohamed Aymen Landolsi on 19/02/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation
@testable import BantuDicoClient
@testable import BantuDicoAlamofireApiClient

struct ApiLanguage: BDClientLanguage  {
    var identifier: Int
    var code: String
}

extension ApiLanguage {
    
    init(language: BDAFLanguage) {
        identifier = language.identifier
        code = language.code
    }
}
