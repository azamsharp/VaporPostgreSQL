import Vapor

func routes(_ app: Application) throws {
    
    // /movies
    app.get("movies") { req in
        Movie.query(on: req.db).all()
    }
    
    
    // movies POST
    app.post("movies") { req -> EventLoopFuture<Movie> in
        
        let movie = try req.content.decode(Movie.self)
        return movie.create(on: req.db).map { movie }
        
    }
    
    
}
