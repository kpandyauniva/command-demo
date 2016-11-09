#!/bin/bash

echo "------deleting projects"
 cnt=1
 while [ $cnt -lt 11 ]
 do
   ~/navopsctl delete -f projects/project''$cnt''.yaml
   ((cnt++))
 done

echo "------deleting namespaces"
~/navopsctl delete -f ns/ns1.yaml
~/navopsctl delete -f ns/ns2.yaml
~/navopsctl delete -f ns/ns3.yaml

echo "------deleting share tree"
~/navopsctl update -f misc/defshares.yaml

