### Selenium on Kubernetes

Selenium Grid allows the execution of WebDriver scripts on remote machines (virtual or real) by routing commands sent by the client to remote browser instances. It aims to provide an easy way to run tests in parallel on multiple machines. This example shows you how to deploy Selenium to Kubernetes in a scalable fashion.

### Architecture:

```
                                          |-----------> Selenium Node 1----->|
                                          |                                  |
                                          |-----------> Selenium Node 2----->| 
                                          |                                  |
Torture---------->Selenium Hub----------->|-----------> Selenium Node3------>|--------->Sariska Meet 
                                          |                                  |  
                                          |-----------> Selenium Node 5----->|   
                                          |                                  | 
                                          |-----------> Selenium Node N----->|
                                          
```                                          
                                             

### Jitsi meet torture  

meet meet torture contains all unit tests written in java selenium as well resources to replicate fake videos.

### Selenium Hub

Hub is a server that accepts the access requests from the WebDriver client, routing the JSON test commands to the remote drives on nodes. It takes instructions from the client and executes them remotely on the various nodes in parallel

### Selenium Node

Node is a remote device that consists of a native OS and a remote WebDriver. It receives requests from the hub in the form of JSON test commands and executes them using WebDriver

### To access selenium hub console
 http:<NODE_IP>:30001/hub/console

  
### How To Run Test:


ssh to torture

### Using Kubect

```

kubectl exec -it torture-f8b758ffc-nnchc -n automation -- /bin/sh

```


and then run test with desired config  
  
```
 mvn -f pom.xml \
-Dthreadcount=1 \
-Dorg.jitsi.malleus.conferences=1 \
-Dorg.jitsi.malleus.participants=5 \
-Dorg.jitsi.malleus.senders=3 \
-Dorg.jitsi.malleus.audio_senders=3 \
-Dorg.jitsi.malleus.duration=300 \
-Dorg.jitsi.malleus.max_disrupted_bridges_pct=0 \
-Dorg.jitsi.malleus.join_delay=200 \
-Dorg.jitsi.malleus.room_name_prefix=loadtest \
-Dorg.jitsi.malleus.regions="" \
-Dremote.address="http://localhost:4444/wd/hub" \
-Djitsi-meet.tests.toRun=MalleusJitsificus \
-Dwdm.gitHubTokenName=jitsi-jenkins \
-Dremote.resource.path='/usr/share/jitsi-meet-torture' \
-Djitsi-meet.instance.url="https://meet.dev.sariska.io" \
-Djitsi-meet.isRemote=true \
-Dchrome.disable.nosanbox=true \
test

```
