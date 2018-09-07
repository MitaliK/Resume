import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    
    // MARK: - Register RouteCollection
    // 1. Creates a new WebsiteController
    let websiteController = WebsiteController()
    // 2. Register the new type with router to ensure the controller routes get registers
    try router.register(collection: websiteController)
}
