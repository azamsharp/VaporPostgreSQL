//
//  File.swift
//  
//
//  Created by Mohammad Azam on 6/4/20.
//

import Foundation
import Vapor
import Fluent
import FluentPostgresDriver

final class Movie: Model, Content {
    
    static let schema = "movies"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "title")
    var title: String
    
    init() {}
    
    init(id: UUID? = nil, title: String) {
        self.id = id
        self.title = title
    }
    
}
