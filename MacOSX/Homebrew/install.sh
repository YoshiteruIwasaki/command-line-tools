#!/bin/sh

# Change Permission
chmod 744 ./bin/*.sh

# Install Command Line Tools
./bin/command-line-tools.sh

# Setup Homebrew
./bin/homebrew.sh

# Install Applications
./bin/app.sh

# Install Java
./bin/java.sh

# Install PostgreSQL
./bin/postgresql.sh

# Install MySQL
./bin/mysql.sh

# Install Tomcat
./bin/tomcat.sh

# Install Cayenne
./bin/cayenne.sh

# Setup Eclipse
./bin/eclipse.sh

# Setup Aipo
./bin/aipo.sh

# Setup VirtualBox
./bin/virtualbox.sh

# Install sass
./bin/sass.sh

