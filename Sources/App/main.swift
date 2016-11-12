import Vapor

let drop = Droplet()

drop.get { req in
    return try drop.view.make("home")
}

drop.get("/cv") { req in
    return try drop.view.make("cv")
}

drop.run()
