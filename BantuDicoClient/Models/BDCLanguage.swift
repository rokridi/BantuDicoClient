//
//  BDCLanguage.swift
//  BantuDicoClient
//
//  Created by Mohamed Aymen Landolsi on 16/02/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation

public struct BDCLanguage {
    let identifier: Int
    let code: String
}

internal extension BDCLanguage {
    
    init(language: BDClientLanguage) {
        identifier = language.identifier
        code = language.code
    }
}
