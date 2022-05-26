//
//  Query.swift
//  Card
//
//  Created by Andres Pelaez on 19/05/22.
//

import Foundation

protocol Query {
    var queryParams: Dictionary<String, String> { get }
    var queryName: String { get }
    var dataFieldsForResponse: String { get }
    
    func queryParameters() -> String
    func requestBody() -> String
}

extension Query {
    
    func queryParameters() -> String {
        var params = String()
        for (key, value) in queryParams {
            params.append(contentsOf: "\n" + key + ":" + value)
        }
        return params
    }
    
    func requestBody() -> String {
        return """
            "query": "query { \(queryName) ( \(queryParameters()) )
            \(dataFieldsForResponse) }"
        """
    }
    
}
