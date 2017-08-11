# docker-bamboo-6.1-base-agen
Dockerfile Bamboo 6.1 Base Agent

<img width="200" src="https://www.docker.com/sites/default/files/Whale%20Logo332_5.png"/><img width="300" src="https://wac-cdn.atlassian.com/dam/jcr:4f99ae3f-808f-44f1-9647-2b7cb87bb0e6/bamboo_rgb_slate.png?cdnVersion=fr"/>

# Building
Clone the project to your directory
```bash
git clone https://github.com/Ismail-AlJubbah/docker-bamboo-6.1-base-agent
```
Then build the image
```bash
docker build -t jubba/docker-bamboo-6.1-base-agent:latest .
```

# Running
Run this command to run the container 
```bash
docker run -d -u=root --name bamboo-base-agent -e BAMBOO_SERVER=http://YOUR-BAMBOO-SERVER-URL:PORT/agentServer/ jubba/docker-bamboo-agent-android:latest
```
# Test
Follow the following steps to make sure your Bamboo agent can connect to Bamboo server:
1. Go to your Bamboo server settings -> System -> General Configureation: 
   Make sure Broker client URL is not pointing to localhost, it shoud point to your server ip or hostname
2. Make sure the ports 54663 443 80 in your Bamboo server are open, try to telnet it from the agent host:
   ```bash
   telnet BAMBOO-SERVER 54663
   telnet BAMBOO-SERVER 443
   telnet BAMBOO-SERVER 80
   ```
 3. Go to your Bamboo server settings -> Agents -> Agent authentication: and aprrove the agent request.
 4. Go to your Bamboo server settings -> Agents -> Online Remote Agent: and wait unit the agent register it self to the server, it may take 2 mins (you may need to refresh the page manually).
 5. Kepp running the following command to check the output of the agent
    ```bash
    docker logs bamboo-base-agent
    ```
  
# Links
More information can be found on the following links:

1. [Original Java Repo by cogniteev](https://github.com/cogniteev/docker-oracle-java/tree/master/oracle-java8)
