//
//  GraphQLQueryResponse.swift
//  Card
//
//  Created by Andres Pelaez on 19/05/22.
//

struct GraphQLQueryResponse<T: Codable>: Codable {
    let data: T?
}
