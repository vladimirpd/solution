#!/bin/bash
    params="the quick brown fox jumps over the lazy dog"
    realized=0
    failed=0
    n=$'\n'
    expected[1]="the${n}quick${n}brown${n}fox${n}jumps${n}over${n}the${n}lazy${n}dog"
    expected[2]="brown${n}dog${n}fox${n}jumps${n}lazy${n}over${n}quick${n}the${n}the"
    expected[3]="brown${n}dog${n}fox${n}jumps${n}lazy${n}over${n}quick${n}the"
    expected[4]="the=2${n}quick=1${n}brown=1${n}fox=1${n}jumps=1${n}over=1${n}lazy=1${n}dog=1"
    expected[5]="the=2${n}brown=1${n}dog=1${n}fox=1${n}jumps=1${n}lazy=1${n}over=1${n}quick=1"
    expected[6]="the=2${n}brown=1${n}dog=1${n}fox=1${n}jumps=1${n}lazy=1${n}over=1${n}quick=1"

    for i in 1 2 3 4 5 6
    do
      current=$(java -jar ./Sol$i.jar $params)
      printf "${n}Sol$i is testing${n}Expected: ${n}${expected[i]}"
      printf "${n}${n}Current:${n}"
      echo "$current"
      printf "${n}${n}${n}"
          if [[ "${expected[${i}]}" == "$current" ]]; then
              (( realized += 1 ))
              else
              (( failed += 1 ))
          fi
    done

    printf "The tests were completed on $realized out of 6"
      if [ $failed != 0 ] ; then
        exit 1
      fi





