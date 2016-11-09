#!/bin/bash

echo "------creating projects"
 cnt=1
 while [ $cnt -lt 11 ]
 do
   ~/navopsctl create -f projects/project''$cnt''.yaml
   ((cnt++))
 done

echo "------creating namespaces"
~/navopsctl create -f ns/ns1.yaml
~/navopsctl create -f ns/ns2.yaml
~/navopsctl create -f ns/ns3.yaml

echo "------creating share tree"
~/navopsctl update -f misc/sharestree.yaml
~/navopsctl update -f misc/podplacement.yaml

