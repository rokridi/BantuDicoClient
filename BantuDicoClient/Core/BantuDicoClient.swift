//
//  BantuDicoClient.swift
//  BantuDicoClient
//
//  Created by Mohamed Aymen Landolsi on 16/02/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation

public typealias BDCTranslationCompletionHandler = ([BDCWord]?, Error?) -> Void
public typealias BDCLanguagesCompletionHandler = ([BDCLanguage]?, Error?) -> Void

public class BantuDicoClient {
    
    private var apiClient: BDClientApiClient
    
    init(apiClient: BDClientApiClient) {
        self.apiClient = apiClient
    }
}

//MARK: - API

public extension BantuDicoClient {
    
    
    /// Translate word.
    ///
    /// - Parameters:
    ///   - word: the word to translate.
    ///   - sourceLanguage: the language of the word.
    ///   - destinationLanguage: the language to which the word will be translated.
    ///   - queue: the queue on which the completion will be called. If not specified then the completion will be dispatched to the main queue.
    ///   - completion: closure called when request finishes.
    /// - Returns: task representing the api request.
    func translate(word: String, sourceLanguage: String, destinationLanguage: String, queue: DispatchQueue? = DispatchQueue.main, completion: BDCTranslationCompletionHandler?) -> URLSessionTask? {
        
        return apiClient.translate(word: word,
                                   sourceLanguage: sourceLanguage,
                                   destinationLanguage: destinationLanguage,
                                   queue: queue) { (words, error) in
                                    
                                    guard error != nil else {
                                        completion?(nil, BDCError.apiClientError(error: error!))
                                        return
                                    }
                                    
                                    completion?(words?.map({ BDCWord(word: $0) }), nil)
        }
    }
    
    /// Fetch supported languages from the backend.
    ///
    /// - Parameters:
    ///   - queue: the queue on which the completion will be called. If not specified then the completion will be dispatched to the main queue.
    ///   - completion: closure called when request finishes.
    /// - Returns: task representing the api request.
    func fetchSupportedLanguages(queue: DispatchQueue?, completion: BDCLanguagesCompletionHandler?) -> URLSessionTask? {
        
        return apiClient.fetchSupportedLanguages(queue: queue
            , completion: { (languages, error) in
                
                guard error != nil else {
                    completion?(nil, BDCError.apiClientError(error: error!))
                    return
                }
                
                completion?(languages?.map({ BDCLanguage(language: $0) }), nil)
        })
    }
}
