## Running service locally    
---

### Prerequisites

1. [install Docker](https://docs.docker.com/engine/install/)

2. [install docker-compose](https://docs.docker.com/compose/install/)

> **_Note:_** if using Mac, docker desktop for Mac includes docker-compose out of the box so no need to install separately.

### Run through setup script

1. clone this repo

```bash
   git clone https://github.com/tseporamaisa/metabase_poc.git
```   
2. change into project directory

```bash
   cd metabase_poc
```
3. run metabase service

```bash
   bash setup.sh start
```

> **_Note:_** above comand runs superset on http://127.0.0.1:3000    

## Initial setup   
---

### Setup user

- In your browser got to http://127.0.0.1:3000 
- Click on the "lets get started" button
- Chose language
- Names, email, company do not have to be real just fill in anything for testing
- Enter password (must be at least 6 characters and include at least 1 number)

### Add data
- The deployement includes sample data for testing functionality. This step can be skipped by clicking "i'll add my data later"     
    
## Useful links   
---    
- [Getting started with metabase](https://www.metabase.com/learn/getting-started/getting-started.html)    
- [Creating dashboards guide](https://www.metabase.com/learn/dashboards/bi-dashboard-best-practices.html)
- [Basic tutorial video](https://www.youtube.com/watch?v=4bNp906oOhs&t=259s)

## Stopping the service    
---   
    
### Stop service without clean-up   
```bash
   bash setup.sh stop 
```    
### Stop service with clean-up   
```bash
   bash setup.sh cleanup
```
> **_Note:_** above command will remove all volumes, delete images and dangling stuff defined by the compose file