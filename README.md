# flyingpaisa-rest-api

before running it on your machine, install npm  

## Run the app  
add the file logicalp_cashback.sql to mysql database  
mysql> ```\. logicalp_cashback.sql```  

start the node server  
terminal> ```nodejs server.js```  

## Data
#### Slider image
- json: ```localhost:3000/sliderimage_data```
- insert: ```localhost:3000/sliderimage``` or send a post request to ```localhost:3000/sliderimage/add```
  
#### Stores
- json: ```localhost:3000/stores_data```
- insert: ```localhost:3000/stores``` or send a post request to ```localhost:3000/stores/add```

#### Tracking
- json: ```localhost:3000/tracking_data```
- insert: ```localhost:3000/tracking``` or send a post request to ```localhost:3000/tracking/add```  

#### Users
- json: ```localhost:3000/users_data```
- insert: ```localhost:3000/users``` or send a post request to ```localhost:3000/users/add```