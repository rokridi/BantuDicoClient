//
//  BantuDicoClientStorage.swift
//  BantuDicoClient
//
//  Created by Mohamed Aymen Landolsi on 15/02/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation

typealias BDClientStorageFetchWordCompletionHandler = (BDClientWord?, Error?) -> Void
typealias BDClientStorageSaveWordCompletionHandler = (BDClientWord?, Error?) -> Void
typealias BDClientStorageFetchLanguagesCompletionHandler = ([String]?, Error?) -> Void
typealias BDClientStorageSaveLanguageCompletionHandler = (Bool, Error?) -> Void

protocol BDClientStorage {
    func fetch(word: String, sourceLanguage: String, destinationLanguage: String, completionHandler: BDClientStorageFetchWordCompletionHandler?)
    func save(word: String, sourceLanguage: String, destinationLanguage: String, completionHandler: BDClientStorageSaveWordCompletionHandler?)
    func fetchLanguages(completionHandler: BDClientStorageFetchLanguagesCompletionHandler?)
    func save(language: String, destinationLanguage: String, completionHandler: BDClientStorageSaveLanguageCompletionHandler?)
}
