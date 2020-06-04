//
//  File.swift
//  
//
//  Created by Mohammad Azam on 6/4/20.
//

import Foundation
import Fluent
import FluentPostgresDriver

struct CreateMovie: Migration {
    
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        
        database.schema("movies")
            .id()
            .field("title", .string)
            .create()
        
    }
    
    // undo
    func revert(on database: Database) -> EventLoopFuture<Void> {
        database.schema("movies").delete()
    }
    
}
