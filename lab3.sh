#!/bin/bash
#Tyler McCabe
# Lab 3 Test



rm test.out

##### Taken 


echo "------------Taken-----------------" >> test.out



./sim-outorder -config config/default.cfg   -bpred taken  -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in 
echo "Taken: Compress95" >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out  
cat  tests/results/compress95.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg   -bpred taken  -max:inst 10000000 -redir:sim tests/results/go.sim tests/bench/go.alpha 50 9  tests/bench/2stone9.in
echo "Taken: 2stone9" >> test.out
cat tests/results/go.sim| grep sim_IPC >> test.out  
cat  tests/results/go.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg  -bpred taken -max:inst 10000000 -redir:sim tests/results/cc1.sim tests/bench/cc1.alpha -O  tests/bench/1stmt.i 
echo "Taken: 1stmt" >> test.out
cat tests/results/cc1.sim | grep sim_IPC >> test.out  
cat  tests/results/cc1.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg -bpred taken -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in  
echo "Taken: anagram" >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out  
cat  tests/results/anagram.sim | grep sim_cycle >> test.out

echo "------------------------------------" >> test.out


##### Perfect

echo "------------Perfect-----------------" >> test.out

./sim-outorder -config config/default.cfg   -bpred perfect  -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in 
echo "Perfect: Compress95" >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out  
cat  tests/results/compress95.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg   -bpred perfect  -max:inst 10000000 -redir:sim tests/results/go.sim tests/bench/go.alpha 50 9  tests/bench/2stone9.in
echo "Perfect: 2stone9" >> test.out
cat tests/results/go.sim| grep sim_IPC >> test.out  
cat  tests/results/go.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg  -bpred perfect -max:inst 10000000 -redir:sim tests/results/cc1.sim tests/bench/cc1.alpha -O  tests/bench/1stmt.i 
echo "Perfect: 1stmt" >> test.out
cat tests/results/cc1.sim | grep sim_IPC >> test.out  
cat  tests/results/cc1.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg -bpred perfect -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in  
echo "Perfect: anagram" >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out  
cat  tests/results/anagram.sim | grep sim_cycle >> test.out




####### Bimodal




echo "------------Bimodal-----------------" >> test.out


# BTD Size 1


echo "########SIZE 1##############" >> test.out


./sim-outorder -config config/default.cfg   -bpred bimod -bpred:bimod 1 -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in 
echo "Bimod 1: Compress95" >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out  
cat  tests/results/compress95.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg   -bpred bimod -bpred:bimod 1  -max:inst 10000000 -redir:sim tests/results/go.sim tests/bench/go.alpha 50 9  tests/bench/2stone9.in
echo "Bimod 1: 2stone9" >> test.out
cat tests/results/go.sim| grep sim_IPC >> test.out  
cat  tests/results/go.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg  -bpred bimod  -bpred:bimod 1 -max:inst 10000000 -redir:sim tests/results/cc1.sim tests/bench/cc1.alpha -O  tests/bench/1stmt.i 
echo "Bimod 1: 1stmt" >> test.out
cat tests/results/cc1.sim | grep sim_IPC >> test.out  
cat  tests/results/cc1.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg -bpred bimod -bpred:bimod 1 -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in  
echo "Bimod 1: anagram" >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out  
cat  tests/results/anagram.sim | grep sim_cycle >> test.out




# BTD Size 16


echo "########SIZE 16##############" >> test.out



./sim-outorder -config config/default.cfg   -bpred bimod -bpred:bimod 16 -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in 
echo "Bimod 16: Compress95" >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out  
cat  tests/results/compress95.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg   -bpred bimod -bpred:bimod 16  -max:inst 10000000 -redir:sim tests/results/go.sim tests/bench/go.alpha 50 9  tests/bench/2stone9.in
echo "Bimod 16: 2stone9" >> test.out
cat tests/results/go.sim| grep sim_IPC >> test.out  
cat  tests/results/go.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg  -bpred bimod  -bpred:bimod 16 -max:inst 10000000 -redir:sim tests/results/cc1.sim tests/bench/cc1.alpha -O  tests/bench/1stmt.i 
echo "Bimod 16: 1stmt" >> test.out
cat tests/results/cc1.sim | grep sim_IPC >> test.out  
cat  tests/results/cc1.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg -bpred bimod -bpred:bimod 16 -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in  
echo "Bimod 16: anagram" >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out  
cat  tests/results/anagram.sim | grep sim_cycle >> test.out


# BTD Size 2048 



echo "########SIZE 2048##############" >> test.out

./sim-outorder -config config/default.cfg   -bpred bimod -bpred:bimod 2048  -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in 
echo "Bimod 2048: Compress95" >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out  
cat  tests/results/compress95.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg   -bpred bimod -bpred:bimod 2048   -max:inst 10000000 -redir:sim tests/results/go.sim tests/bench/go.alpha 50 9  tests/bench/2stone9.in
echo "Bimod 2048: 2stone9" >> test.out
cat tests/results/go.sim| grep sim_IPC >> test.out  
cat  tests/results/go.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg  -bpred bimod  -bpred:bimod 2048  -max:inst 10000000 -redir:sim tests/results/cc1.sim tests/bench/cc1.alpha -O  tests/bench/1stmt.i 
echo "Bimod 2048: 1stmt" >> test.out
cat tests/results/cc1.sim | grep sim_IPC >> test.out  
cat  tests/results/cc1.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg -bpred bimod -bpred:bimod 2048  -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in  
echo "Bimod 2048: anagram" >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out  
cat  tests/results/anagram.sim | grep sim_cycle >> test.out




####### 2-Level



echo "------------2-Level-----------------" >> test.out





#1
./sim-outorder -config config/default.cfg   -bpred 2lev -bpred:2lev     1     1      1                     0  -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in 
echo "2-Level  1     1      1 : Compress95" >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out  
cat  tests/results/compress95.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg   -bpred 2lev -bpred:2lev     1     1     1                 0  -max:inst 10000000 -redir:sim tests/results/go.sim tests/bench/go.alpha 50 9  tests/bench/2stone9.in
echo "2-Level  1     1      1 : 2stone9" >> test.out
cat tests/results/go.sim| grep sim_IPC >> test.out  
cat  tests/results/go.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg  -bpred 2lev  -bpred:2lev      1     1    1                  0 -max:inst 10000000 -redir:sim tests/results/cc1.sim tests/bench/cc1.alpha -O  tests/bench/1stmt.i 
echo "2-Level  1     1      1 : 1stmt" >> test.out
cat tests/results/cc1.sim | grep sim_IPC >> test.out  
cat  tests/results/cc1.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg -bpred 2lev -bpred:2lev        1    1        1                    0  -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in  
echo "2-Level  1     1      1 : anagram" >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out  
cat  tests/results/anagram.sim | grep sim_cycle >> test.out





#2
./sim-outorder -config config/default.cfg   -bpred 2lev -bpred:2lev     1     1     8                     0  -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in 
echo "2-Level 1     1     8: Compress95" >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out  
cat  tests/results/compress95.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg   -bpred 2lev -bpred:2lev     1      1     8                 0  -max:inst 10000000 -redir:sim tests/results/go.sim tests/bench/go.alpha 50 9  tests/bench/2stone9.in
echo "2-Level 1     1     8: 2stone9" >> test.out
cat tests/results/go.sim| grep sim_IPC >> test.out  
cat  tests/results/go.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg  -bpred 2lev  -bpred:2lev      1     1     8                  0 -max:inst 10000000 -redir:sim tests/results/cc1.sim tests/bench/cc1.alpha -O  tests/bench/1stmt.i 
echo "2-Level v: 1stmt" >> test.out
cat tests/results/cc1.sim | grep sim_IPC >> test.out  
cat  tests/results/cc1.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg -bpred 2lev -bpred:2lev        1    1        8                    0  -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in  
echo "2-Level 1     1     8: anagram" >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out  
cat  tests/results/anagram.sim | grep sim_cycle >> test.out




#3
./sim-outorder -config config/default.cfg   -bpred 2lev -bpred:2lev     1     1024      1                     0  -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in 
echo "2-Level 1     1024      1: Compress95" >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out  
cat  tests/results/compress95.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg   -bpred 2lev -bpred:2lev     1      1024     1                 0  -max:inst 10000000 -redir:sim tests/results/go.sim tests/bench/go.alpha 50 9  tests/bench/2stone9.in
echo "2-Level 1     1024      1: 2stone9" >> test.out
cat tests/results/go.sim| grep sim_IPC >> test.out  
cat  tests/results/go.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg  -bpred 2lev  -bpred:2lev      1     1024     1                  0 -max:inst 10000000 -redir:sim tests/results/cc1.sim tests/bench/cc1.alpha -O  tests/bench/1stmt.i 
echo "2-Level 1     1024      1: 1stmt" >> test.out
cat tests/results/cc1.sim | grep sim_IPC >> test.out  
cat  tests/results/cc1.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg -bpred 2lev -bpred:2lev        1    1024        1                    0  -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in  
echo "2-Level 1     1024      1: anagram" >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out  
cat  tests/results/anagram.sim | grep sim_cycle >> test.out






#4
./sim-outorder -config config/default.cfg   -bpred 2lev -bpred:2lev     1    1024      8                     0  -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in 
echo "2-Level 1    1024      8: Compress95" >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out  
cat  tests/results/compress95.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg   -bpred 2lev -bpred:2lev     1     1024     8                 0  -max:inst 10000000 -redir:sim tests/results/go.sim tests/bench/go.alpha 50 9  tests/bench/2stone9.in
echo "2-Level 1    1024      8: 2stone9" >> test.out
cat tests/results/go.sim| grep sim_IPC >> test.out  
cat  tests/results/go.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg  -bpred 2lev  -bpred:2lev      1     1024     8                  0 -max:inst 10000000 -redir:sim tests/results/cc1.sim tests/bench/cc1.alpha -O  tests/bench/1stmt.i 
echo "2-Level 1    1024      8: 1stmt" >> test.out
cat tests/results/cc1.sim | grep sim_IPC >> test.out  
cat  tests/results/cc1.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg -bpred 2lev -bpred:2lev        1    1024        8                    0  -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in  
echo "2-Level 1    1024      8: anagram" >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out  
cat  tests/results/anagram.sim | grep sim_cycle >> test.out







#5
./sim-outorder -config config/default.cfg   -bpred 2lev -bpred:2lev     32     1     1                     0  -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in 
echo "2-Level 32     1     1: Compress95" >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out  
cat  tests/results/compress95.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg   -bpred 2lev -bpred:2lev     32      1    1                 0  -max:inst 10000000 -redir:sim tests/results/go.sim tests/bench/go.alpha 50 9  tests/bench/2stone9.in
echo "2-Level 32     1     1: 2stone9" >> test.out
cat tests/results/go.sim| grep sim_IPC >> test.out  
cat  tests/results/go.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg  -bpred 2lev  -bpred:2lev      32     1    1                  0 -max:inst 10000000 -redir:sim tests/results/cc1.sim tests/bench/cc1.alpha -O  tests/bench/1stmt.i 
echo "2-Level 32     1     1: 1stmt" >> test.out
cat tests/results/cc1.sim | grep sim_IPC >> test.out  
cat  tests/results/cc1.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg -bpred 2lev -bpred:2lev        32   1       1                    0  -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in  
echo "2-Level 32     1     1: anagram" >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out  
cat  tests/results/anagram.sim | grep sim_cycle >> test.out








#6 
./sim-outorder -config config/default.cfg   -bpred 2lev -bpred:2lev     32     1     8                     0  -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in 
echo "2-Level 32     1     8: Compress95" >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out  
cat  tests/results/compress95.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg   -bpred 2lev -bpred:2lev     32      1     8                 0  -max:inst 10000000 -redir:sim tests/results/go.sim tests/bench/go.alpha 50 9  tests/bench/2stone9.in
echo "2-Level v: 2stone9" >> test.out
cat tests/results/go.sim| grep sim_IPC >> test.out  
cat  tests/results/go.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg  -bpred 2lev  -bpred:2lev      32     1     8                  0 -max:inst 10000000 -redir:sim tests/results/cc1.sim tests/bench/cc1.alpha -O  tests/bench/1stmt.i 
echo "2-Level 32     1     8: 1stmt" >> test.out
cat tests/results/cc1.sim | grep sim_IPC >> test.out  
cat  tests/results/cc1.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg -bpred 2lev -bpred:2lev        32    1        8                    0  -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in  
echo "2-Level 32     1     8: anagram" >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out  
cat  tests/results/anagram.sim | grep sim_cycle >> test.out





#7
./sim-outorder -config config/default.cfg   -bpred 2lev -bpred:2lev     32     1024      1                    0  -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in 
echo "2-Level 32     1024      1: Compress95" >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out  
cat  tests/results/compress95.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg   -bpred 2lev -bpred:2lev     32      1024     1                 0  -max:inst 10000000 -redir:sim tests/results/go.sim tests/bench/go.alpha 50 9  tests/bench/2stone9.in
echo "2-Level 32     1024      1: 2stone9" >> test.out
cat tests/results/go.sim| grep sim_IPC >> test.out  
cat  tests/results/go.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg  -bpred 2lev  -bpred:2lev      32    1024     1                  0 -max:inst 10000000 -redir:sim tests/results/cc1.sim tests/bench/cc1.alpha -O  tests/bench/1stmt.i 
echo "2-Level 32     1024      1: 1stmt" >> test.out
cat tests/results/cc1.sim | grep sim_IPC >> test.out  
cat  tests/results/cc1.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg -bpred 2lev -bpred:2lev        32    1024        1                    0  -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in  
echo "2-Level 32     1024      1: anagram" >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out  
cat  tests/results/anagram.sim | grep sim_cycle >> test.out






#8
./sim-outorder -config config/default.cfg   -bpred 2lev -bpred:2lev     32     1024      8                     0  -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in 
echo "2-Level 32     1024      8: Compress95" >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out  
cat  tests/results/compress95.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg   -bpred 2lev -bpred:2lev     32      1024     8                 0  -max:inst 10000000 -redir:sim tests/results/go.sim tests/bench/go.alpha 50 9  tests/bench/2stone9.in
echo "2-Level 32     1024      8: 2stone9" >> test.out
cat tests/results/go.sim| grep sim_IPC >> test.out  
cat  tests/results/go.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg  -bpred 2lev  -bpred:2lev      32     1024     8                  0 -max:inst 10000000 -redir:sim tests/results/cc1.sim tests/bench/cc1.alpha -O  tests/bench/1stmt.i 
echo "2-Level 32     1024      8: 1stmt" >> test.out
cat tests/results/cc1.sim | grep sim_IPC >> test.out  
cat  tests/results/cc1.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg -bpred 2lev -bpred:2lev        32    1024        8                    0  -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in  
echo "2-Level 32     1024      8: anagram" >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out  
cat  tests/results/anagram.sim | grep sim_cycle >> test.out


echo "--------END---------" >> test.out

















