//
//  BDClientWord.swift
//  BantuDicoClient
//
//  Created by Mohamed Aymen Landolsi on 15/02/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation

protocol BDClientWord {
    var identifier: Int {get}
    var word: String {get}
    var language: String {get}
}
