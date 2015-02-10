#!/bin/sh

# Change Permission
chmod 744 ./bin/*.sh

# init
./bin/init.sh

# Install Java
./bin/java.sh

# Install PostgreSQL
./bin/postgresql.sh

# Install Tomcat
./bin/tomcat.sh

# Install Cayenne
./bin/cayenne.sh

# Setup Eclipse
./bin/eclipse.sh

# Setup Aipo
./bin/aipo.sh
