

import Vapor
import Leaf

// Declare a new WebsiteController type that conforms to RouteCollection.
struct WebsiteController: RouteCollection {
    
    // Implement boot(router:) as required by RouteCollection.
    func boot(router: Router) throws {
        
        // Register indexHandler(_:) to process GET requests to the router’s root path, i.e., a request to /.
        router.get(use: indexHandler)
    }
    
    // Implement indexHandler(_:) that returns Future<View>.
    func indexHandler(_ req: Request) throws -> Future<View> {
        
        // Create an IndexContext containing the desired title.
        let context = IndexContext(title: "Homepage")
        
        // Render the index template and return the result. You’ll learn about req.view() in a moment
        return try req.view().render("index", context)
    }
}

// Create a new type to contain the title
struct IndexContext: Encodable {
    let title: String
}
