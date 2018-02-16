//
//  BDClientApiClient.swift
//  BantuDicoClient
//
//  Created by Mohamed Aymen Landolsi on 15/02/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation

typealias BantuDicoApiTranslationCompletionHandler = (BDClientWord?, Error?) -> Void
typealias BantuDicoApiLanguagesCompletionHandler = ([BDClientLanguage]?, Error?) -> Void

protocol BantuDicoApiClient: class {
    func translate(word: String, sourceLanguage: String, destinationLanguage: String, queue: DispatchQueue?, completion: BantuDicoApiTranslationCompletionHandler?) -> URLSessionTask?
    func fetchSupportedLanguages(queue: DispatchQueue?, completion: BantuDicoApiLanguagesCompletionHandler?) -> URLSessionTask?
}
