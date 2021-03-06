//
//  URL+CryptoCompare.swift
//  Coins Explorer
//
//  Created by Spiros Gerokostas on 04/11/2018.
//  Copyright © 2018 Spiros Gerokostas. All rights reserved.
//

import UIKit

typealias Parameters = [String: Any]

extension URL {
    func appendingfQueryParameters(_ paramaters: Parameters) -> URL {
        var urlComponents = URLComponents(url: self, resolvingAgainstBaseURL: true)!
        var items = urlComponents.queryItems ?? []
        items += paramaters.map{ URLQueryItem(name: $0, value: "\($1)") }
        urlComponents.queryItems = items
        return urlComponents.url!
    }
    mutating func appendQueryParameters(_ parameters: Parameters) {
        self = appendingfQueryParameters(parameters)
    }
}
