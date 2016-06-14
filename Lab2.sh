#!/bin/bash
#Tyler McCabe
# Lab 2 Test


rm test.out


#####Benchmark 1: Compress95

echo "Benchmark 1: Compress95"

./sim-outorder -config config/default.cfg -issue:inorder true  -issue:width 1 -decode:width 1 -res:ialu 1  -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in 
echo "Compress95: -issue:inorder true  -issue:width 1 -decode:width 1 -res:ialu 1 " >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out  
cat  tests/results/compress95.sim | grep sim_cycle >> test.out

./sim-outorder -config config/default.cfg -issue:inorder true  -issue:width 1 -decode:width 1 -res:ialu 4 -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in 		
echo "Compress95: -issue:inorder true  -issue:width 1 -decode:width 1 -res:ialu 4" >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out  
cat  tests/results/compress95.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg -issue:inorder true  -issue:width 1 -decode:width 4 -res:ialu 1 -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in 		
echo "Compress95: -issue:inorder true  -issue:width 1 -decode:width 4 -res:ialu 1" >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out
cat  tests/results/compress95.sim | grep sim_cycle >> test.out


./sim-outorder -config config/default.cfg -issue:inorder true  -issue:width 1 -decode:width 4 -res:ialu 4 -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in 		 
echo "Compress95: -issue:inorder true  -issue:width 1 -decode:width 4 -res:ialu 4 " >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out
cat  tests/results/compress95.sim | grep sim_cycle >> test.out

./sim-outorder -config config/default.cfg -issue:inorder true  -issue:width 4 -decode:width 1 -res:ialu 1  -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in 		
echo "Compress95: -issue:inorder true  -issue:width 4 -decode:width 1 -res:ialu 1 " >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out
cat  tests/results/compress95.sim | grep sim_cycle >> test.out

./sim-outorder -config config/default.cfg -issue:inorder true  -issue:width 4 -decode:width 1 -res:ialu 4  -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in 		
echo "Compress95: -issue:inorder true  -issue:width 4 -decode:width 1 -res:ialu 4 " >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out
cat  tests/results/compress95.sim | grep sim_cycle >> test.out

./sim-outorder -config config/default.cfg -issue:inorder true  -issue:width 4 -decode:width 4 -res:ialu 1  -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in 		
echo "Compress95: -issue:inorder true  -issue:width 4 -decode:width 4 -res:ialu 1" >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out
cat  tests/results/compress95.sim | grep sim_cycle >> test.out

./sim-outorder -config config/default.cfg -issue:inorder true  -issue:width 4 -decode:width 4 -res:ialu 4  -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in 		
echo "Compress95: -issue:inorder true  -issue:width 4 -decode:width 4 -res:ialu 4 " >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out
cat  tests/results/compress95.sim | grep sim_cycle >> test.out

./sim-outorder -config config/default.cfg -issue:inorder false -issue:width 1 -decode:width 1 -res:ialu 1  -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in		
echo "Compress95: -issue:inorder true  -issue:width 4 -decode:width 1 -res:ialu 1" >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out
cat  tests/results/compress95.sim | grep sim_cycle >> test.out

./sim-outorder -config config/default.cfg -issue:inorder false -issue:width 1 -decode:width 1 -res:ialu 4 -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in		  
echo "Compress95: -issue:inorder false -issue:width 1 -decode:width 1 -res:ialu 4 " >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out
cat  tests/results/compress95.sim | grep sim_cycle >> test.out

./sim-outorder -config config/default.cfg -issue:inorder false -issue:width 1 -decode:width 4 -res:ialu 1 -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in 		 
echo "Compress95: -issue:inorder false -issue:width 1 -decode:width 4 -res:ialu 1 " >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out
cat  tests/results/compress95.sim | grep sim_cycle >> test.out

./sim-outorder -config config/default.cfg -issue:inorder false -issue:width 1 -decode:width 4 -res:ialu 4  -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in 		
echo "Compress95: -issue:inorder false -issue:width 1 -decode:width 4 -res:ialu 4" >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out
cat  tests/results/compress95.sim | grep sim_cycle >> test.out

./sim-outorder -config config/default.cfg -issue:inorder false -issue:width 4 -decode:width 1 -res:ialu 1 -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in 		 
echo "Compress95: -issue:inorder false -issue:width 4 -decode:width 1 -res:ialu 1" >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out
cat  tests/results/compress95.sim | grep sim_cycle >> test.out

./sim-outorder -config config/default.cfg -issue:inorder false -issue:width 4 -decode:width 1 -res:ialu 4  -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in 		
echo "Compress95: -issue:inorder false -issue:width 4 -decode:width 1 -res:ialu 4" >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out
cat  tests/results/compress95.sim | grep sim_cycle >> test.out

./sim-outorder -config config/default.cfg -issue:inorder false -issue:width 4 -decode:width 4 -res:ialu 1  -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in 		
echo "Compress95: -issue:inorder false -issue:width 4 -decode:width 4 -res:ialu 1" >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out
cat  tests/results/compress95.sim | grep sim_cycle >> test.out

./sim-outorder -config config/default.cfg -issue:inorder false -issue:width 4 -decode:width 4 -res:ialu 4 -redir:sim tests/results/compress95.sim tests/bench/compress95.alpha <  tests/bench/compress95.in 		 
echo "Compress95: -issue:inorder false -issue:width 4 -decode:width 4 -res:ialu 4" >> test.out
cat tests/results/compress95.sim | grep sim_IPC >> test.out
cat  tests/results/compress95.sim | grep sim_cycle >> test.out

#####Benchmark 2: Anagram

echo "--------------------------------------------" >> test.out
echo "Benchmark 2: Anagram" >> test.out


 ./sim-outorder -config config/default.cfg -issue:inorder true  -issue:width 1 -decode:width 1 -res:ialu 1 -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in   		 
echo "Anagram:   -issue:inorder true  -issue:width 1 -decode:width 1 -res:ialu 1"  >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out
cat  tests/results/anagram.sim | grep sim_cycle >> test.out

  ./sim-outorder -config config/default.cfg  -issue:inorder true  -issue:width 1 -decode:width 1 -res:ialu 4 -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in  		 
echo "Anagram:   -issue:inorder true  -issue:width 1 -decode:width 1 -res:ialu 4" >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out
cat  tests/results/anagram.sim | grep sim_cycle >> test.out

  ./sim-outorder -config config/default.cfg -issue:inorder true  -issue:width 1 -decode:width 4 -res:ialu 1  -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in  		  
echo "Anagram:   -issue:inorder true  -issue:width 1 -decode:width 4 -res:ialu 1" >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out
cat  tests/results/anagram.sim | grep sim_cycle >> test.out

  ./sim-outorder -config config/default.cfg  -issue:inorder true  -issue:width 1 -decode:width 4 -res:ialu 4 -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in  		  
echo "Anagram:   -issue:inorder true  -issue:width 1 -decode:width 4 -res:ialu 4" >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out
cat  tests/results/anagram.sim | grep sim_cycle >> test.out

  ./sim-outorder -config config/default.cfg -issue:inorder true  -issue:width 4 -decode:width 1 -res:ialu 1  -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in  		  
echo "Anagram:   -issue:inorder true  -issue:width 4 -decode:width 1 -res:ialu 1" >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out
cat  tests/results/anagram.sim | grep sim_cycle >> test.out

  ./sim-outorder -config config/default.cfg -issue:inorder true  -issue:width 4 -decode:width 1 -res:ialu 4 -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in   		  
echo "Anagram:   -issue:inorder true  -issue:width 4 -decode:width 1 -res:ialu 4" >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out
cat  tests/results/anagram.sim | grep sim_cycle >> test.out

  ./sim-outorder -config config/default.cfg -issue:inorder true  -issue:width 4 -decode:width 4 -res:ialu 1  -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in   		 
echo "Anagram:   -issue:inorder true  -issue:width 4 -decode:width 4 -res:ialu 1" >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out
cat  tests/results/anagram.sim | grep sim_cycle >> test.out

 ./sim-outorder -config config/default.cfg  -issue:inorder true  -issue:width 4 -decode:width 4 -res:ialu 4  -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in   		
echo "Anagram:   -issue:inorder true  -issue:width 4 -decode:width 4 -res:ialu 4 " >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out
cat  tests/results/anagram.sim | grep sim_cycle >> test.out

  ./sim-outorder -config config/default.cfg -issue:inorder false -issue:width 1 -decode:width 1 -res:ialu 1  -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in  		  
echo "Anagram:    -issue:inorder false -issue:width 1 -decode:width 1 -res:ialu 1" >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out
cat  tests/results/anagram.sim | grep sim_cycle >> test.out

  ./sim-outorder -config config/default.cfg  -issue:inorder false -issue:width 1 -decode:width 1 -res:ialu 4  -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in   		
echo "Anagram:   -issue:inorder false -issue:width 1 -decode:width 1 -res:ialu 4" >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out
cat  tests/results/anagram.sim | grep sim_cycle >> test.out

  ./sim-outorder -config config/default.cfg -issue:inorder false -issue:width 1 -decode:width 4 -res:ialu 1  -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in  		  
echo "Anagram:   -issue:inorder false -issue:width 1 -decode:width 4 -res:ialu 1" >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out
cat  tests/results/anagram.sim | grep sim_cycle >> test.out

  ./sim-outorder -config config/default.cfg -issue:inorder false -issue:width 1 -decode:width 4 -res:ialu 4  -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in   		 
echo "Anagram:   -issue:inorder false -issue:width 1 -decode:width 4 -res:ialu 4 " >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out
cat  tests/results/anagram.sim | grep sim_cycle >> test.out

  ./sim-outorder -config config/default.cfg  -issue:inorder false -issue:width 4 -decode:width 1 -res:ialu 1  -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in  		  
echo "Anagram:    -issue:inorder false -issue:width 4 -decode:width 1 -res:ialu 1" >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out
cat  tests/results/anagram.sim | grep sim_cycle >> test.out

  ./sim-outorder -config config/default.cfg -issue:inorder false -issue:width 4 -decode:width 1 -res:ialu 4  -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in   		 
echo "Anagram:   -issue:inorder false -issue:width 4 -decode:width 1 -res:ialu 4" >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out
cat  tests/results/anagram.sim | grep sim_cycle >> test.out

  ./sim-outorder -config config/default.cfg   -issue:inorder false -issue:width 4 -decode:width 4 -res:ialu 1  -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in  		
echo "Anagram:   -issue:inorder false -issue:width 4 -decode:width 4 -res:ialu 1" >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out
cat  tests/results/anagram.sim | grep sim_cycle >> test.out

 ./sim-outorder -config config/default.cfg   -issue:inorder false -issue:width 4 -decode:width 4 -res:ialu 4  -redir:sim tests/results/anagram.sim tests/bench/anagram.alpha words <  tests/bench/anagram.in  		
echo "Anagram:    -issue:inorder false -issue:width 4 -decode:width 4 -res:ialu 4" >> test.out
cat tests/results/anagram.sim | grep sim_IPC >> test.out
cat  tests/results/anagram.sim | grep sim_cycle >> test.out




#####Benchmark 3: Test-args

echo "--------------------------------------------" >> test.out
echo "Benchmark 3: Test-args" >> test.out


 ./sim-outorder -config config/default.cfg  -issue:inorder true  -issue:width 1 -decode:width 1 -res:ialu 1 -redir:sim tests/results/test-args.sim tests/bin/test-args 		    
echo "Test-args:  -issue:inorder true  -issue:width 1 -decode:width 1 -res:ialu 1" >> test.out
cat tests/results/test-args.sim | grep sim_IPC >> test.out
cat  tests/results/test-args.sim | grep sim_cycle >> test.out

 ./sim-outorder -config config/default.cfg  -issue:inorder true  -issue:width 1 -decode:width 1 -res:ialu 4  -redir:sim tests/results/test-args.sim tests/bin/test-args 		    
echo "Test-args:   -issue:inorder true  -issue:width 1 -decode:width 1 -res:ialu 4 " >> test.out
cat tests/results/test-args.sim | grep sim_IPC >> test.out
cat  tests/results/test-args.sim | grep sim_cycle >> test.out

 ./sim-outorder -config config/default.cfg -issue:inorder true  -issue:width 1 -decode:width 4 -res:ialu 1  -redir:sim tests/results/test-args.sim tests/bin/test-args 		     
echo "Test-args:   -issue:inorder true  -issue:width 1 -decode:width 4 -res:ialu 1" >> test.out
cat tests/results/test-args.sim | grep sim_IPC >> test.out
cat  tests/results/test-args.sim | grep sim_cycle >> test.out

 ./sim-outorder -config config/default.cfg  -issue:inorder true  -issue:width 1 -decode:width 4 -res:ialu 4  -redir:sim tests/results/test-args.sim tests/bin/test-args  		    
echo "Test-args:  -issue:inorder true  -issue:width 1 -decode:width 4 -res:ialu 4 " >> test.out
cat tests/results/test-args.sim | grep sim_IPC >> test.out
cat  tests/results/test-args.sim | grep sim_cycle >> test.out

 ./sim-outorder -config config/default.cfg   -issue:inorder true  -issue:width 4 -decode:width 1 -res:ialu 1  -redir:sim tests/results/test-args.sim tests/bin/test-args   		 
echo "Test-args:  -issue:inorder true  -issue:width 4 -decode:width 1 -res:ialu 1 " >> test.out
cat tests/results/test-args.sim | grep sim_IPC >> test.out
cat  tests/results/test-args.sim | grep sim_cycle >> test.out

 ./sim-outorder -config config/default.cfg -issue:inorder true  -issue:width 4 -decode:width 1 -res:ialu 4  -redir:sim tests/results/test-args.sim tests/bin/test-args  		    
echo "Test-args:    -issue:inorder true  -issue:width 4 -decode:width 1 -res:ialu 4 " >> test.out
cat tests/results/test-args.sim | grep sim_IPC >> test.out
cat  tests/results/test-args.sim | grep sim_cycle >> test.out

 ./sim-outorder -config config/default.cfg -issue:inorder true  -issue:width 4 -decode:width 4 -res:ialu 1 -redir:sim tests/results/test-args.sim tests/bin/test-args   		    
echo "Test-args:  -issue:inorder true  -issue:width 4 -decode:width 4 -res:ialu 1" >> test.out
cat tests/results/test-args.sim | grep sim_IPC >> test.out
cat  tests/results/test-args.sim | grep sim_cycle >> test.out

 ./sim-outorder -config config/default.cfg -issue:inorder true  -issue:width 4 -decode:width 4 -res:ialu 4  -redir:sim tests/results/test-args.sim tests/bin/test-args   		  
echo "Test-args:  -issue:inorder true  -issue:width 4 -decode:width 4 -res:ialu 4" >> test.out
cat tests/results/test-args.sim | grep sim_IPC >> test.out
cat  tests/results/test-args.sim | grep sim_cycle >> test.out

./sim-outorder -config config/default.cfg -issue:inorder false -issue:width 1 -decode:width 1 -res:ialu 1  -redir:sim tests/results/test-args.sim tests/bin/test-args       		
echo "Test-args:  -issue:inorder false -issue:width 1 -decode:width 1 -res:ialu 1" >> test.out
cat tests/results/test-args.sim | grep sim_IPC >> test.out
cat  tests/results/test-args.sim | grep sim_cycle >> test.out

./sim-outorder -config config/default.cfg  -issue:inorder false -issue:width 1 -decode:width 1 -res:ialu 4  -redir:sim tests/results/test-args.sim tests/bin/test-args    		  
echo "Test-args:   -issue:inorder false -issue:width 1 -decode:width 1 -res:ialu 4" >> test.out
cat tests/results/test-args.sim | grep sim_IPC >> test.out
cat  tests/results/test-args.sim | grep sim_cycle >> test.out

./sim-outorder -config config/default.cfg   -issue:inorder false -issue:width 1 -decode:width 4 -res:ialu 1  -redir:sim tests/results/test-args.sim tests/bin/test-args      		
echo "Test-args:  -issue:inorder false -issue:width 1 -decode:width 4 -res:ialu 1 " >> test.out
cat tests/results/test-args.sim | grep sim_IPC >> test.out
cat  tests/results/test-args.sim | grep sim_cycle >> test.out

./sim-outorder -config config/default.cfg  -issue:inorder false -issue:width 1 -decode:width 4 -res:ialu 4  -redir:sim tests/results/test-args.sim tests/bin/test-args    		  
echo "Test-args:   -issue:inorder false -issue:width 1 -decode:width 4 -res:ialu 4 " >> test.out
cat tests/results/test-args.sim | grep sim_IPC >> test.out
cat  tests/results/test-args.sim | grep sim_cycle >> test.out

./sim-outorder -config config/default.cfg -issue:inorder false -issue:width 4 -decode:width 1 -res:ialu 1  -redir:sim tests/results/test-args.sim tests/bin/test-args    		   
echo "Test-args:  -issue:inorder false -issue:width 4 -decode:width 1 -res:ialu 1" >> test.out
cat tests/results/test-args.sim | grep sim_IPC >> test.out
cat  tests/results/test-args.sim | grep sim_cycle >> test.out

./sim-outorder -config config/default.cfg  -issue:inorder false -issue:width 4 -decode:width 1 -res:ialu 4 -redir:sim tests/results/test-args.sim tests/bin/test-args    		   
echo "Test-args:  -issue:inorder false -issue:width 4 -decode:width 1 -res:ialu 4" >> test.out
cat tests/results/test-args.sim | grep sim_IPC >> test.out
cat  tests/results/test-args.sim | grep sim_cycle >> test.out

./sim-outorder -config config/default.cfg  -issue:inorder false -issue:width 4 -decode:width 4 -res:ialu 1  -redir:sim tests/results/test-args.sim tests/bin/test-args   		   
echo "Test-args:  -issue:inorder false -issue:width 4 -decode:width 4 -res:ialu 1 " >> test.out
cat tests/results/test-args.sim | grep sim_IPC >> test.out
cat  tests/results/test-args.sim | grep sim_cycle >> test.out

./sim-outorder -config config/default.cfg -issue:inorder false -issue:width 4 -decode:width 4 -res:ialu 4 -redir:sim tests/results/test-args.sim tests/bin/test-args     		  
echo "Test-args:  -issue:inorder false -issue:width 4 -decode:width 4 -res:ialu 4" >> test.out
cat tests/results/test-args.sim | grep sim_IPC >> test.out
cat  tests/results/test-args.sim | grep sim_cycle >> test.out

