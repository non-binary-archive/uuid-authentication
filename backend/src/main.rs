#![feature(proc_macro_hygiene, decl_macro)]
#[macro_use] extern crate rocket;

// Initialize the application.
#[tokio::main]
async fn main() {
    // Initialize Rocket, mount root route and register 404 catcher.
    match rocket::ignite().mount("/", routes![response]).register(catchers![not_found]).launch().await {
        // If success, print success.
        Ok(success) => println!("success: {:?}", success),
        // If error, print error.
        Err(error) => println!("error: {:?}", error)
    }
}

// Routes
#[get("/")]
pub async fn response() -> String {
    // Temp: Return Hello World string.
    "Hello World".to_string()
}

#[catch(404)]
pub fn not_found() -> &'static str {
    // Catch all in case someone goes to the URL directly.
    "You are using this tool incorrectly. Please use it through the API."
}