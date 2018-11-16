g++ -lpthread -O3 dotproduct.cpp
perf stat -r 5 -e cpu-cycles,instructions,cache-references,cache-misses,dTLB-loads,dTLB-loadmisses,dTLB-stores,dTLB-store-misses,iTLB-loads,iTLB-load-misses,branch-loads,branch-loadmisses ./a.out
