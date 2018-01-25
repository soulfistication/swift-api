import Vapor

extension Droplet {
    func setupRoutes() throws {
        get("hello") { req in
            var json = JSON()
            try json.set("Hello", "Swift Backend")
            return json
        }

        get("plaintext") { req in
            return "Hello, world!"
        }

        get("info") { req in
            return req.description
        }

        get("response") { req in
            return "Xcode 9"
        }

        get("description") { req in return req.description }
        
        try resource("posts", PostController.self)
    }
}
