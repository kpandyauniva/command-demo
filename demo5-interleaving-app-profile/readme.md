
#### Title of the presenation
Keeping a ratio of number of interdependent services/applications instances in k8s cluster

#### Purpose
Demonstrate interleaving scheduling policy based on application profile.  Presentation duration 6-7 minutue

#### Background Scenario
NK Corporation infrastructure has large number of servers and they use microservices, frontend applications, ETLs and big data analytics. Typical workflow at NK consists of a project going through development, staging and production stages.  From the past expereince, production staff has found optimal ratio of front-end application to the services used by the front-end.  For example one sales service can optimally be used by five corp-ui front end. NK like to maintain that ratio to get the best performance and utilization.

#### Demo Steps/script
1. Welcome message- welcome to Navops Command - a sophisticated workload scheduling and advanced policy management tool for enterprises to optimize container workload on any Kubernetes distribution.  The title of this presentation is "Keeping a ratio of number of interdependent services/apps instances". We will demonstrate Command's interleaving scheduling policy based on application profile to achieve application/service ratio.
2. Describe background scenario
3. Descsribe Navops Command - consist of containerzied scheduler, api server and web/front end application that run within k8s cluster
4. Bring up UI. Give introduction to Command objects - projects, users, application profile, show how to add
5. Give introduction to Command policy configuration elements - Pod placement, Propotional shares, Quota, Interleaving, Ranking (Command objects are referenced by policy configuration elements)
6. Load configuration through config/load.sh.  Describe navopsctl - cli - interacting with api server, point out streaming updates to browser
7. Show policy element and talk about it- max utilization, shares and interleaving.  Shares enables sharing of resources, interleaving complements that with application/service instances.
8. Describe/show Application Profile(s) that it is template configuration, how that will be referred in k8s Pod definition.  
9. Demo data - 5:1 ratio- show Interleaving, pods being asked 20, 20 - show scenario5.yaml, quota set to 25-show in UI.
10. Disable namespace
11. Create Pods - kubectl create -f scenario5.yaml
12. Show pods are pending
13. Enable namespace
14. Show pods running with kubectl get pods --namespace=production
15. Point out ratio of corp-ui to sales service instances
