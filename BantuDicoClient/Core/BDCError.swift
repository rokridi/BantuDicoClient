//
//  BDCError.swift
//  BantuDicoClient
//
//  Created by Mohamed Aymen Landolsi on 16/02/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation

enum BDCError: Error {
    
    case apiClientError(error: Error)
    
    var underlyingError: Error? {
        switch self {
        case .apiClientError(let error):
            return error
        }
    }
}

