/// We have isolated all of our App's logic into
/// the App module because it makes our app
/// more testable.
///
/// In general, the executable portion of our App
/// shouldn't include much more code than is presented
/// here.
///
/// We simply initialize our Droplet, optionally
/// passing in values if necessary
/// Then, we pass it to our App's setup function
/// this should setup all the routes and special
/// features of our app
///
/// .run() runs the Droplet's commands, 
/// if no command is given, it will default to "serve"

// import App

//let config = try Config()
//try config.setup()
//
//let drop = try Droplet(config)
//try drop.setup()
//
//try drop.run()

import Vapor

do {
    let drop = try Droplet()

    drop.get { request in
        return "Hello Vapor!"
    }

    do {
        try drop.run()
    } catch {
        print("Exception thrown at run()")
    }

} catch (let error) {
    print("Couldn't create the Droplet")
    print(error.localizedDescription)
}
