
#### Purpose
Demonstrate interleaving scheduling policy based on application profile.  Presentation duration 6-7 minutue


#### Background Scenario
NK Corporation's IT infrastructure comprises of large number of servers. The applications at NK can be broadly categorized as microservices, frontend applications, ETLs and big data analytics. Typical workflow at NK consists of a project going through development, staging and production stages.  From the past expereince, production staff has found optimal ratio of front-end application to the services used by the front-end.  For example one sales service can optimally be used by five corp-ui front end. NK like to maintain that ratio to get the best performance and utilization.

#### Steps
0. Welcome message- welcome to Navops Command - a sophisticated workload scheduling and advanced policy management tool for enterprises to optimize container workload on any Kubernetes distribution.  This presentation/video will demonstrate Command's interleaving scheduling policy based on application profile.
1. Give introduction to Command objects - projects, users, application profile
2. Give introduction to Command policy elements - Pod placement, Propotional shares, Quota, Interleaving, Ranking (Command objects are referenced by policy elements)
3. Load configuration through config/load.sh.  Describe navopsctl - cli - interacting with api server, point out streaming updates to browser
4. Show policy element and talk about it- max utilization, shares and interleaving.  Shares enables sharing of resources, interleaving complements that with application/service instances.
5. Describe/show Application Profile(s) that it is template configuration, how that will be referred in k8s Pod definition.  
6. Demo data - 5:1 ratio- show Interleaving, pods being asked 20, 20 - show scenario5.yaml, quota set to 25-show in UI.
7. Disable namespace
8. Create Pods - kubectl create -f scenario5.yaml
9. Show pods are pending
10. Enable namespace
11. Show pods running with kubectl get pods --namespace=production
12. Point out ratio of corp-ui to sales service instances
