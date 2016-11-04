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

echo "----creating application profiles"
~/navopsctl create -f app-profiles/corp-ui-profile.yaml
~/navopsctl create -f app-profiles/sales-profile.yaml

echo "--adding interleaving"
~/navopsctl create -f misc/interleaving.yaml
