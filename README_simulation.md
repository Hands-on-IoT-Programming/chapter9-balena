# chapter9-Balena SIMULATION
Code application SIMULATING the Sense Hat to mimic what the code does with the actual Sense Hat attached to the Raspberry Pi provisioned in Balena platform

# How to include your Pusher credentials
Make a copy of the `.env.template` file and add you account credentials:
```
$ cd ./nodered/app
$ cp .env.template .env
```
Then add your Pusher credentials to `.env` file

# Start the application
This branch runs NodeRED in port 1880:
```bash
$ cd ./nodered-simulation/app
$ bash start
```
Visit http://localhost:1880