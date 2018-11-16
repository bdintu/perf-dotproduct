sysctl kernel.perf_event_paranoid=0
g++ -pthread -O3 dotproduct.cpp
perf stat -r 5 -e cpu-cycles,instructions,cache-references,cache-misses,dTLB-loads,dTLB-load-misses,dTLB-stores,dTLB-store-misses,iTLB-loads,iTLB-load-misses,branch-loads,branch-load-misses ./a.out
