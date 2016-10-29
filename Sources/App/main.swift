import Vapor

let drop = Droplet()

drop.get { req in
    return try drop.view.make("welcome", [
    	"message": "Welcome to pauls blog"
    ])
}
drop.resource("posts", PostController())
drop.run()
