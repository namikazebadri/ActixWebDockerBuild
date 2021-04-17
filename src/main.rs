use actix_web::{App, HttpServer};

#[path = "controllers/index.rs"] mod controllers;

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    HttpServer::new(|| {
        App::new()
            .service(controllers::index)
    })
    .bind("127.0.0.1:8080")?
    .run()
    .await
}
