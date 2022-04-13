## Running service locally

### Prerequisites

1. [install Docker](https://docs.docker.com/engine/install/)

2. [install docker-compose](https://docs.docker.com/compose/install/)

> **_Note:_** if using Mac, docker desktop for Mac includes docker-compose out of the box so no need to install separately.

### Run through docker compose

1. clone this repo

```bash
   git clone https://github.com/tseporamaisa/metabase_poc.git
```   
2. change into project directory

```bash
   cd metabase_poc
```
3. run superset service

```bash
   docker-compose up -d
```

> **_Note:_** above comand runs superset on http://127.0.0.1:3000    

### Setup

#### Setup user

- In your browser got to http://127.0.0.1:3000 
- Click on the "lets get started" button
- Chose language
- Names, email, company do not have to be real just fill in anything for testing
- Enter password (must be at least 6 characters and include at least 1 number)

#### Add data
- The deployement includes sample data for testing functionality. This step can be skiped by clicking "i'll add my data later"   

## Stopping the service    
    
### stop service without clean-up   
```bash
   docker-compose down 
```    
### stop service with clean-up   
```bash
   docker-compose down -v --rmi all --remove-orphans
```
> **_Note:_** above command will remove all volumes, delete images and dangling stuff defined by the compose file