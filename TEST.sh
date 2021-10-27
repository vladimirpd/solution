#!/bin/bash
  params="the quick brown fox jumps over the lazy dog"
  expected[1]="the\nquick\nbrown\nfox\njumps\nover\nthe\nlazy\ndog"
  expected[2]="brown\ndog\nfox\njumps\nlazy\nover\nquick\nthe\nthe"
  expected[3]="brown\ndog\nfox\njumps\nlazy\nover\nquick\nthe"
  expected[4]="the=2\nquick=1\nbrown=1\nfox=1\njumps=1\nover=1\nlazy=1\ndog=1"
  expected[5]="the=2\nbrown=1\ndog=1\nfox=1\njumps=1\nlazy=1\nover=1\nquick=1"
  expected[6]="the=2\nbrown=1\ndog=1\nfox=1\njumps=1\nlazy=1\nover=1\nquick=1"
  for i in 1 2 3 4 5 6
  do
  current=$(java -jar ./Sol$i.jar $params)
  printf "\nSol$i is testing\nExpected: \n${expected[i]}"
  printf "\n\nCurrent:\n"
  echo "$current"
  printf "\n\n\n"
  done





