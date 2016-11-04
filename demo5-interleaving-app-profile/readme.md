
#### Purpose
Demonstrate interleaving based on application profile


#### Scenario
NK Corporation's IT infrastructure comprises of large number of servers. The applications at NK can be broadly categorized as microservices, frontend applications, ETLs and big data analytics. Typical workflow at NK consists of a project going through development, staging and production stages.  From the past expereince, production staff has found optimal ration of front-end application to the service used by it.  For example one sales service can optimally be used by five corp-ui front end. NK like to keep that ratio to get the best performance and utilization.

#### Steps
0. Describe Navops Command - use diagram
1. Give introduction to Command objects - projects, users, application profile
2. Give introduction to Command policy elements - Pod placement, Propotional shares, Quota, Interleaving, Ranking (Command objects are used in policy)
3. Load configuration through config/load.sh.  Describe navopsctl - cli - interacting with api server, point out streaming updates to browser
4. Show policy element and talk about it- max utilization, shares and interleaving.  Shares enables sharing of resources, interleaving complients that with application/service instances.
5. Show Application Profile(s), how that will be referred in k8s Pod definition.  
6. Demo data - 5:1 ratio- show Interleaving, pods being asked 20, 20 - show scenario5.yaml, quota set to 25-show in UI.
7. Disable namespace
8. Create Pods - kubectl create -f scenario5.yaml
9. Show pods are pending
10. Enable namespace
11. Show pods running with kubectl get pods --namespace=production
