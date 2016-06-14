#!/bin/bash

# Tyler McCabe
# Professor Carpenter
# Lab 2
# 5-26-2016



# Clear output file
rm test.out

#####Benchmark 1: compress95


echo "Benchmark 1: Compress95"

./sim-outorder -config config/default.cfg -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in issue:inorder true  issue:width 1 decode:width 1 res:ialu 1 
echo "Compress95: issue:inorder true  issue:width 1 decode:width 1 res:ialu 1 " >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out  
cat  tests/results/compress95.sim | grep sim_cycle >> test.out

./sim-outorder -config config/default.cfg -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in issue:inorder true  issue:width 1 decode:width 1 res:ialu 4
echo "Compress95: issue:inorder true  issue:width 1 decode:width 1 res:ialu 4" >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out  
cat  tests/results/compress95.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in issue:inorder true  issue:width 1 decode:width 4 res:ialu 1
echo "Compress95: issue:inorder true  issue:width 1 decode:width 4 res:ialu 1" >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out
cat  tests/results/compress95.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in issue:inorder true  issue:width 1 decode:width 4 res:ialu 4 
echo "Compress95: issue:inorder true  issue:width 1 decode:width 4 res:ialu 4 " >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out
cat  tests/results/compress95.sim | grep sim_cycle >> test.out

./sim-outorder -config config/default.cfg -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in issue:inorder true  issue:width 4 decode:width 1 res:ialu 1 
echo "Compress95: issue:inorder true  issue:width 4 decode:width 1 res:ialu 1 " >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out
cat  tests/results/compress95.sim | grep sim_cycle >> test.out

./sim-outorder -config config/default.cfg -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in issue:inorder true  issue:width 4 decode:width 1 res:ialu 4 
echo "Compress95: issue:inorder true  issue:width 4 decode:width 1 res:ialu 4 " >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out
cat  tests/results/compress95.sim | grep sim_cycle >> test.out

./sim-outorder -config config/default.cfg -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in issue:inorder true  issue:width 4 decode:width 4 res:ialu 1 
echo "Compress95: issue:inorder true  issue:width 4 decode:width 4 res:ialu 1" >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out
cat  tests/results/compress95.sim | grep sim_cycle >> test.out

./sim-outorder -config config/default.cfg -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in issue:inorder true  issue:width 4 decode:width 4 res:ialu 4 
echo "Compress95: issue:inorder true  issue:width 4 decode:width 4 res:ialu 4 " >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out
cat  tests/results/compress95.sim | grep sim_cycle >> test.out

./sim-outorder -config config/default.cfg -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in issue:inorder false issue:width 1 decode:width 1 res:ialu 1 
echo "Compress95: issue:inorder true  issue:width 4 decode:width 1 res:ialu 1" >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out
cat  tests/results/compress95.sim | grep sim_cycle >> test.out

./sim-outorder -config config/default.cfg -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in issue:inorder false issue:width 1 decode:width 1 res:ialu 4 
echo "Compress95: issue:inorder false issue:width 1 decode:width 1 res:ialu 4 " >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out
cat  tests/results/compress95.sim | grep sim_cycle >> test.out

./sim-outorder -config config/default.cfg -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in issue:inorder false issue:width 1 decode:width 4 res:ialu 1 
echo "Compress95: issue:inorder false issue:width 1 decode:width 4 res:ialu 1 " >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out
cat  tests/results/compress95.sim | grep sim_cycle >> test.out

./sim-outorder -config config/default.cfg -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in issue:inorder false issue:width 1 decode:width 4 res:ialu 4 
echo "Compress95: issue:inorder false issue:width 1 decode:width 4 res:ialu 4" >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out
cat  tests/results/compress95.sim | grep sim_cycle >> test.out

./sim-outorder -config config/default.cfg -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in issue:inorder false issue:width 4 decode:width 1 res:ialu 1 
echo "Compress95: issue:inorder false issue:width 4 decode:width 1 res:ialu 1" >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out
cat  tests/results/compress95.sim | grep sim_cycle >> test.out

./sim-outorder -config config/default.cfg -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in issue:inorder false issue:width 4 decode:width 1 res:ialu 4 
echo "Compress95: issue:inorder false issue:width 4 decode:width 1 res:ialu 4" >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out
cat  tests/results/compress95.sim | grep sim_cycle >> test.out

./sim-outorder -config config/default.cfg -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in issue:inorder false issue:width 4 decode:width 4 res:ialu 1 
echo "Compress95: issue:inorder false issue:width 4 decode:width 4 res:ialu 1" >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out
cat  tests/results/compress95.sim | grep sim_cycle >> test.out

./sim-outorder -config config/default.cfg -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in issue:inorder false issue:width 4 decode:width 4 res:ialu 4 
echo "Compress95: issue:inorder false issue:width 4 decode:width 4 res:ialu 4" >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out
cat  tests/results/compress95.sim | grep sim_cycle >> test.out

#####Benchmark 2: Anagram

echo "--------------------------------------------" >> test.out
echo "Benchmark 2: Anagram" >> test.out


 ./sim-outorder -config config/default.cfg -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in    issue:inorder true  issue:width 1 decode:width 1 res:ialu 1
echo "Anagram:   issue:inorder true  issue:width 1 decode:width 1 res:ialu 1"  >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out
cat  tests/results/anagram.sim | grep sim_cycle >> test.out

  ./sim-outorder -config config/default.cfg -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in   issue:inorder true  issue:width 1 decode:width 1 res:ialu 4 
echo "Anagram:   issue:inorder true  issue:width 1 decode:width 1 res:ialu 4" >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out
cat  tests/results/anagram.sim | grep sim_cycle >> test.out

  ./sim-outorder -config config/default.cfg -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in    issue:inorder true  issue:width 1 decode:width 4 res:ialu 1 
echo "Anagram:   issue:inorder true  issue:width 1 decode:width 4 res:ialu 1" >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out
cat  tests/results/anagram.sim | grep sim_cycle >> test.out

  ./sim-outorder -config config/default.cfg -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in    issue:inorder true  issue:width 1 decode:width 4 res:ialu 4 
echo "Anagram:   issue:inorder true  issue:width 1 decode:width 4 res:ialu 4" >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out
cat  tests/results/anagram.sim | grep sim_cycle >> test.out

  ./sim-outorder -config config/default.cfg -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in    issue:inorder true  issue:width 4 decode:width 1 res:ialu 1 
echo "Anagram:   issue:inorder true  issue:width 4 decode:width 1 res:ialu 1" >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out
cat  tests/results/anagram.sim | grep sim_cycle >> test.out

  ./sim-outorder -config config/default.cfg -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in    issue:inorder true  issue:width 4 decode:width 1 res:ialu 4 
echo "Anagram:   issue:inorder true  issue:width 4 decode:width 1 res:ialu 4" >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out
cat  tests/results/anagram.sim | grep sim_cycle >> test.out

  ./sim-outorder -config config/default.cfg -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in    issue:inorder true  issue:width 4 decode:width 4 res:ialu 1 
echo "Anagram:   issue:inorder true  issue:width 4 decode:width 4 res:ialu 1" >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out
cat  tests/results/anagram.sim | grep sim_cycle >> test.out

 ./sim-outorder -config config/default.cfg -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in    issue:inorder true  issue:width 4 decode:width 4 res:ialu 4 
echo "Anagram:   issue:inorder true  issue:width 4 decode:width 4 res:ialu 4 " >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out
cat  tests/results/anagram.sim | grep sim_cycle >> test.out

  ./sim-outorder -config config/default.cfg -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in    issue:inorder false issue:width 1 decode:width 1 res:ialu 1 
echo "Anagram:    issue:inorder false issue:width 1 decode:width 1 res:ialu 1" >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out
cat  tests/results/anagram.sim | grep sim_cycle >> test.out

  ./sim-outorder -config config/default.cfg -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in    issue:inorder false issue:width 1 decode:width 1 res:ialu 4 
echo "Anagram:   issue:inorder false issue:width 1 decode:width 1 res:ialu 4" >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out
cat  tests/results/anagram.sim | grep sim_cycle >> test.out

  ./sim-outorder -config config/default.cfg -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in    issue:inorder false issue:width 1 decode:width 4 res:ialu 1 
echo "Anagram:   issue:inorder false issue:width 1 decode:width 4 res:ialu 1" >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out
cat  tests/results/anagram.sim | grep sim_cycle >> test.out

  ./sim-outorder -config config/default.cfg -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in    issue:inorder false issue:width 1 decode:width 4 res:ialu 4 
echo "Anagram:   issue:inorder false issue:width 1 decode:width 4 res:ialu 4 " >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out
cat  tests/results/anagram.sim | grep sim_cycle >> test.out

  ./sim-outorder -config config/default.cfg -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in    issue:inorder false issue:width 4 decode:width 1 res:ialu 1 
echo "Anagram:    issue:inorder false issue:width 4 decode:width 1 res:ialu 1" >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out
cat  tests/results/anagram.sim | grep sim_cycle >> test.out

  ./sim-outorder -config config/default.cfg -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in    issue:inorder false issue:width 4 decode:width 1 res:ialu 4 
echo "Anagram:   issue:inorder false issue:width 4 decode:width 1 res:ialu 4" >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out
cat  tests/results/anagram.sim | grep sim_cycle >> test.out

  ./sim-outorder -config config/default.cfg -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in    issue:inorder false issue:width 4 decode:width 4 res:ialu 1 
echo "Anagram:   issue:inorder false issue:width 4 decode:width 4 res:ialu 1" >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out
cat  tests/results/anagram.sim | grep sim_cycle >> test.out

 ./sim-outorder -config config/default.cfg -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in    issue:inorder false issue:width 4 decode:width 4 res:ialu 4 
echo "Anagram:    issue:inorder false issue:width 4 decode:width 4 res:ialu 4" >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out
cat  tests/results/anagram.sim | grep sim_cycle >> test.out




#####Benchmark 3: Test-args

echo "--------------------------------------------" >> test.out
echo "Benchmark 3: Test-args" >> test.out


 ./sim-outorder -config config/default.cfg -redir:sim tests/results/test-args.sim tests/bin/test-args      issue:inorder true  issue:width 1 decode:width 1 res:ialu 1 
echo "Test-args:  issue:inorder true  issue:width 1 decode:width 1 res:ialu 1" >> test.out
cat tests/results/test-args.sim | grep sim_IPC >> test.out
cat  tests/results/test-args.sim | grep sim_cycle >> test.out

 ./sim-outorder -config config/default.cfg -redir:sim tests/results/test-args.sim tests/bin/test-args      issue:inorder true  issue:width 1 decode:width 1 res:ialu 4 
echo "Test-args:   issue:inorder true  issue:width 1 decode:width 1 res:ialu 4 " >> test.out
cat tests/results/test-args.sim | grep sim_IPC >> test.out
cat  tests/results/test-args.sim | grep sim_cycle >> test.out

 ./sim-outorder -config config/default.cfg -redir:sim tests/results/test-args.sim tests/bin/test-args      issue:inorder true  issue:width 1 decode:width 4 res:ialu 1 
echo "Test-args:   issue:inorder true  issue:width 1 decode:width 4 res:ialu 1" >> test.out
cat tests/results/test-args.sim | grep sim_IPC >> test.out
cat  tests/results/test-args.sim | grep sim_cycle >> test.out

 ./sim-outorder -config config/default.cfg -redir:sim tests/results/test-args.sim tests/bin/test-args       issue:inorder true  issue:width 1 decode:width 4 res:ialu 4 
echo "Test-args:  issue:inorder true  issue:width 1 decode:width 4 res:ialu 4 " >> test.out
cat tests/results/test-args.sim | grep sim_IPC >> test.out
cat  tests/results/test-args.sim | grep sim_cycle >> test.out

 ./sim-outorder -config config/default.cfg -redir:sim tests/results/test-args.sim tests/bin/test-args      issue:inorder true  issue:width 4 decode:width 1 res:ialu 1 
echo "Test-args:  issue:inorder true  issue:width 4 decode:width 1 res:ialu 1 " >> test.out
cat tests/results/test-args.sim | grep sim_IPC >> test.out
cat  tests/results/test-args.sim | grep sim_cycle >> test.out

 ./sim-outorder -config config/default.cfg -redir:sim tests/results/test-args.sim tests/bin/test-args      issue:inorder true  issue:width 4 decode:width 1 res:ialu 4 
echo "Test-args:    issue:inorder true  issue:width 4 decode:width 1 res:ialu 4 " >> test.out
cat tests/results/test-args.sim | grep sim_IPC >> test.out
cat  tests/results/test-args.sim | grep sim_cycle >> test.out

 ./sim-outorder -config config/default.cfg -redir:sim tests/results/test-args.sim tests/bin/test-args      issue:inorder true  issue:width 4 decode:width 4 res:ialu 1 
echo "Test-args:  issue:inorder true  issue:width 4 decode:width 4 res:ialu 1" >> test.out
cat tests/results/test-args.sim | grep sim_IPC >> test.out
cat  tests/results/test-args.sim | grep sim_cycle >> test.out

 ./sim-outorder -config config/default.cfg -redir:sim tests/results/test-args.sim tests/bin/test-args      issue:inorder true  issue:width 4 decode:width 4 res:ialu 4 
echo "Test-args:  issue:inorder true  issue:width 4 decode:width 4 res:ialu 4" >> test.out
cat tests/results/test-args.sim | grep sim_IPC >> test.out
cat  tests/results/test-args.sim | grep sim_cycle >> test.out

./sim-outorder -config config/default.cfg -redir:sim tests/results/test-args.sim tests/bin/test-args       issue:inorder false issue:width 1 decode:width 1 res:ialu 1 
echo "Test-args:  issue:inorder false issue:width 1 decode:width 1 res:ialu 1" >> test.out
cat tests/results/test-args.sim | grep sim_IPC >> test.out
cat  tests/results/test-args.sim | grep sim_cycle >> test.out

./sim-outorder -config config/default.cfg -redir:sim tests/results/test-args.sim tests/bin/test-args       issue:inorder false issue:width 1 decode:width 1 res:ialu 4 
echo "Test-args:   issue:inorder false issue:width 1 decode:width 1 res:ialu 4" >> test.out
cat tests/results/test-args.sim | grep sim_IPC >> test.out
cat  tests/results/test-args.sim | grep sim_cycle >> test.out

./sim-outorder -config config/default.cfg -redir:sim tests/results/test-args.sim tests/bin/test-args        issue:inorder false issue:width 1 decode:width 4 res:ialu 1 
echo "Test-args:  issue:inorder false issue:width 1 decode:width 4 res:ialu 1 " >> test.out
cat tests/results/test-args.sim | grep sim_IPC >> test.out
cat  tests/results/test-args.sim | grep sim_cycle >> test.out

./sim-outorder -config config/default.cfg -redir:sim tests/results/test-args.sim tests/bin/test-args       issue:inorder false issue:width 1 decode:width 4 res:ialu 4 
echo "Test-args:   issue:inorder false issue:width 1 decode:width 4 res:ialu 4 " >> test.out
cat tests/results/test-args.sim | grep sim_IPC >> test.out
cat  tests/results/test-args.sim | grep sim_cycle >> test.out

./sim-outorder -config config/default.cfg -redir:sim tests/results/test-args.sim tests/bin/test-args       issue:inorder false issue:width 4 decode:width 1 res:ialu 1 
echo "Test-args:  issue:inorder false issue:width 4 decode:width 1 res:ialu 1" >> test.out
cat tests/results/test-args.sim | grep sim_IPC >> test.out
cat  tests/results/test-args.sim | grep sim_cycle >> test.out

./sim-outorder -config config/default.cfg -redir:sim tests/results/test-args.sim tests/bin/test-args       issue:inorder false issue:width 4 decode:width 1 res:ialu 4 
echo "Test-args:  issue:inorder false issue:width 4 decode:width 1 res:ialu 4" >> test.out
cat tests/results/test-args.sim | grep sim_IPC >> test.out
cat  tests/results/test-args.sim | grep sim_cycle >> test.out

./sim-outorder -config config/default.cfg -redir:sim tests/results/test-args.sim tests/bin/test-args       issue:inorder false issue:width 4 decode:width 4 res:ialu 1 
echo "Test-args:  issue:inorder false issue:width 4 decode:width 4 res:ialu 1 " >> test.out
cat tests/results/test-args.sim | grep sim_IPC >> test.out
cat  tests/results/test-args.sim | grep sim_cycle >> test.out

./sim-outorder -config config/default.cfg -redir:sim tests/results/test-args.sim tests/bin/test-args       issue:inorder false issue:width 4 decode:width 4 res:ialu 4
echo "Test-args:  issue:inorder false issue:width 4 decode:width 4 res:ialu 4" >> test.out
cat tests/results/test-args.sim | grep sim_IPC >> test.out
cat  tests/results/test-args.sim | grep sim_cycle >> test.out


