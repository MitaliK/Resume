

import Vapor
import Leaf

// Declare a new WebsiteController type that conforms to RouteCollection.
struct WebsiteController: RouteCollection {
    
    // Implement boot(router:) as required by RouteCollection.
    func boot(router: Router) throws {
        
        // Register indexHandler(_:) to process GET requests to the router’s root path, i.e., a request to /.
        router.get(use: indexHandler)
        
        // Register experienceHandler(_:) to process GET requests to /experience.
        router.get("experience", use: experienceHandler)
        
        // Register educationHandler(_:) to process GET requests to /education.
        router.get("education", use: educationHandler)
    }
    
    // Implement indexHandler(_:) that returns Future<View>.
    func indexHandler(_ req: Request) throws -> Future<View> {
        
        // Create an IndexContext containing the desired title.
        let context = IndexContext(title: "About")
        
        // Render the index template and return the result. You’ll learn about req.view() in a moment
        return try req.view().render("index", context)
    }
    
    // Implement experienceHandler(_:) that returns Future<View>.
    func experienceHandler(_ req: Request) throws -> Future<View> {
        
        // Create an IndexContext containing the desired title.
        let context = IndexContext(title: "Experience")
        
        // Render the index template and return the result. You’ll learn about req.view() in a moment
        return try req.view().render("experience", context)
    }
    
    // Implement educationHandler(_:) that returns Future<View>.
    func educationHandler(_ req: Request) throws -> Future<View> {
        
        // Create an IndexContext containing the desired title.
        let context = IndexContext(title: "Education")
        
        // Render the index template and return the result. You’ll learn about req.view() in a moment
        return try req.view().render("education", context)
    }
}

// Create a new type to contain the title
struct IndexContext: Encodable {
    let title: String
}
