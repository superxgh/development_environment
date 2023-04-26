### Installation
## rust_postgres_env
1. Create rust container
    $ cd rust_container
    $  (windows).\init_docker.sh 
       (for mac) $ sh init_docker.sh

2. Create rust_postgres_env
    $ cd rust_postgres_env
    $  (windows) .\init_docker.sh
       (for mac) $ sh init_docker.sh

3. for n_post in rust container
    1. get n_post source
        $ bash
        $ cd workspace
        $ git clone <project link>
    2. config .env and config.toml for n_post_api 
        > DATABASE_URL=postgres://root:20002000@172.29.0.2:5432/main_db?schema=public
        in config.toml
        > redis_url= "redis://172.29.0.4:6379/"
    3. build rust project goto project path and
        $ cargo build
    4. generate prisma
        $ cargo prisma generate
        $ cargo prisma migrate dev
    5. cargo build again
        $ cargo build
    6. run the project
        $ cargo run