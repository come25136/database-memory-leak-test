# Database memory leak test

# Run commands
1. `npm i`
2. Edit the .env file
3. `npm run database:migrate:dev`
4. `npm start`

# Environment in which the memory leak was confirmed
It will consume the maximum amount of machine memory and will eventually be killed by the OOM killer.  
- [mariadb 1:10.6.5+maria~focal](https://hub.docker.com/layers/mariadb/library/mariadb/latest/images/- sha256-6aede9b2573833b2271f413ae12268796499fdaa5073681f9902f5ab2c60b84a?context=explore)  
[mysql community server minimal 8.0.28](https://hub.docker.com/layers/mysql/mysql-server/latest/images/sha256-9b14aaf42b0f1ea9b4622e3f437bd2493da9c59d3e5e5e00e3cdb68d0d4c31d7?context=explore)  

It consumes the maximum amount of machine memory, but garbage collection is performed when a connection is broken, greatly reducing memory usage.  
- postgresql 14.2-1.pgdg110+1
