cargo new <name>,npm init (followed by manual file creation),"Creates a brand new project with the standard file structure (Cargo.toml, src/main.rs)."
cargo run,npm start (if start builds and runs),Builds your code and runs the resulting executable in a single step. This is the simplest way to execute your program.
cargo build,npm run build,Compiles your project. The executable binary is placed in the target/debug/ folder.
cargo build --release,npm run build:prod (or similar),"Compiles your project with full optimizations. The faster, but slower-to-build, binary is in target/release/."
cargo check,(No direct npm equivalent),"Checks your code for errors, warnings, and unresolvable dependencies, without compiling the executable. This is much faster than cargo build and is great for quick feedback."
cargo test,npm test,Runs all unit and integration tests defined in your project.
cargo add <crate>,npm install <package>,Adds a new dependency to your Cargo.toml file automatically. (The one you just asked about!)
cargo update,npm update,Updates your dependencies to the latest versions permitted by the version constraints in Cargo.toml. Updates the Cargo.lock file.
