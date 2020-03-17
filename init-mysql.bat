
C:\Windows\System32\cmd.exe /k "docker-compose exec db bash -c "chmod 0775 docker-entrypoint-initdb.d/init-database.sh" && C:\Windows\System32\cmd.exe /k "docker-compose exec db bash -c "./docker-entrypoint-initdb.d/init-database.sh"
# Other prompt
# docker-compose exec db bash -c "chmod 0775 docker-entrypoint-initdb.d/init-database.sh"
# docker-compose exec db bash -c "./docker-entrypoint-initdb.d/init-database.sh"