#!/bin/bash


function print_podstat()
{
  local cnt;
  local pod_name=$1
  local asked=$2
  local percent

  cnt=$(kubectl get pods --namespace=$ns | grep $pod_name | grep Running | wc -l)
  if [ $total -eq 0 ]; then
       percent=0
  else
       percent=$((cnt*100/total))
  fi
  echo "-----"
  echo " $pod_name:asked:$asked, running:"$cnt", % of running:"$percent
}

printf "\n\n"
ns=production
total_asked=$(kubectl get pods --namespace=$ns | wc -l)
((total_asked--))
total_p=$(kubectl get pods --namespace=$ns |  grep Pending | wc -l)
total=$(kubectl get pods --namespace=$ns |  grep Running | wc -l)
echo -e " Total pods " $total_asked "Pending " $total_p "Running " $total

print_podstat sales 20
print_podstat corp-ui 20

