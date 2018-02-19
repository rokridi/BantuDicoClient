//
//  ApiClient.swift
//  BantuDicoClientTests
//
//  Created by Mohamed Aymen Landolsi on 19/02/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation
@testable import BantuDicoClient
@testable import BantuDicoAlamofireApiClient

class ApiClient {
    
    let client: BantuDicoAlamofireApiClient
    
    init(baseURL: String) {
        client = BantuDicoAlamofireApiClient(baseURL: baseURL)
    }
}

extension ApiClient: BDApiClient {
    
    func translate(word: String, sourceLanguage: String, destinationLanguage: String, queue: DispatchQueue?, completion: BDApiTranslationCompletionHandler?) -> URLSessionTask? {
        return client.translate(word: word, sourceLanguage: sourceLanguage, destinationLanguage: destinationLanguage, queue: queue, completion: { (words, error) in
            guard error != nil else {
                completion?(nil, error)
                return
            }
            completion?(words?.map({ ApiWord(word: $0) }), nil)
        })
    }
    
    func fetchSupportedLanguages(queue: DispatchQueue?, completion: BDApiLanguagesCompletionHandler?) -> URLSessionTask? {
        return client.fetchSupportedLanguages(queue: queue, completion: { (languages, error) in
            guard error != nil else {
                completion?(nil, error)
                return
            }
            completion?(languages?.map({ ApiLanguage(language: $0) }), nil)
        })
    }
}
