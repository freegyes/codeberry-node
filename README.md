# codeberry-node
This is a sample Node.js / Express run webapp in a Docker container.

## Features
 - the frontend and backend codebase are both mounted (changes are reflected without rebuilding the Docker image)
 - the bakcend runs nodemon instead of node so the server restarts on every change

## Installation
### Prerequisites

  - Docker has to be installed on your machine ([install Docker](https://www.docker.com/products/overview#/install_the_platform))
  - Docker has to be running (the whale can be seen on your taskbar)
  - You are able to run shell scripts

  1. `$ git clone https://github.com/freegyes/codeberry-node.git`
  2. `$ cd codeberry-node`
  3. `$ cd backend-codebase`
  4. `$ ./scripts/development.sh` (chmod 777 if it cannot be run)
  5. Wait a while for the `npm install` on the virtual machine and then visit `http://localhost:3000/`
