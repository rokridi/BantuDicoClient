//
//  BDApiClient.swift
//  BantuDicoClient
//
//  Created by Mohamed Aymen Landolsi on 15/02/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation

typealias BDApiTranslationCompletionHandler = ([BDClientWord]?, Error?) -> Void
typealias BDApiLanguagesCompletionHandler = ([BDClientLanguage]?, Error?) -> Void

protocol BDClientApiClient: class {
    func translate(word: String, sourceLanguage: String, destinationLanguage: String, queue: DispatchQueue?, completion: BDApiTranslationCompletionHandler?) -> URLSessionTask?
    func fetchSupportedLanguages(queue: DispatchQueue?, completion: BDApiLanguagesCompletionHandler?) -> URLSessionTask?
}
