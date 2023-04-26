### Installation
## rust_postgres_env
1. Create rust container
    $ cd rust_container
    $  .\init_docker.sh

2. Create rust_postgres_env
    $ cd rust_postgres_env
    $ .\init_docker.sh

3. for n_post in rust container
    1. get n_post code
        $ bash
        $ cd workspace
        $ git clone https://git.jetbrains.space/mynote/n-pos/n_pos_api.git
    2. config .env n_post_api 
        > DATABASE_URL=postgres://root:20002000@172.29.0.2:5432/main_db?schema=public
    3. build rust project goto project path and
        $ cargo build
    4. generate prisma
        $ prisma generate