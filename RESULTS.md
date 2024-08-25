## Hello function

### `sh bench-build.sh` && `ls -lh code.tar.gz`:

Go:

```
Benchmark 1: sh helper-build.sh
  Time (mean ± σ):      9.700 s ±  0.235 s    [User: 0.013 s, System: 0.015 s]
  Range (min … max):    9.177 s … 10.143 s    25 runs

-rw-r--r-- 1 root root 2.2M Aug 23 10:52 code.tar.gz
```

Node:

```
Benchmark 1: sh helper-build.sh
  Time (mean ± σ):     870.9 ms ±  29.8 ms    [User: 13.3 ms, System: 15.0 ms]
  Range (min … max):   824.9 ms … 935.8 ms    25 runs

-rw-r--r-- 1 root root 552 Aug 23 10:50 code.tar.gz
```

PHP:

```
Benchmark 1: sh helper-build.sh
  Time (mean ± σ):     525.7 ms ±  31.5 ms    [User: 14.5 ms, System: 18.2 ms]
  Range (min … max):   479.8 ms … 616.9 ms    25 runs

-rw-r--r-- 1 root root 8.4K Aug 25 08:40 code.tar.gz
```

Python:

```
Benchmark 1: sh helper-build.sh
  Time (mean ± σ):     10.949 s ±  0.596 s    [User: 0.019 s, System: 0.020 s]
  Range (min … max):   10.069 s … 11.946 s    25 runs

-rw-r--r-- 1 root root 5.4M Aug 25 10:26 code.tar.gz
```

###  `sh bench-coldstart.sh` && `docker stats`:

Go:

```
Benchmark 1: sh helper-coldstart.sh
  Time (mean ± σ):     339.4 ms ±  31.4 ms    [User: 22.5 ms, System: 31.1 ms]
  Range (min … max):   272.1 ms … 433.2 ms    100 runs


CONTAINER ID   NAME               CPU %     MEM USAGE / LIMIT     MEM %     NET I/O         BLOCK I/O     PIDS
a54ef53dcb2c   trusting_davinci   0.00%     2.141MiB / 15.62GiB   0.01%     1.73kB / 576B   0B / 5.35MB   7
```

Node:

```
Benchmark 1: sh helper-coldstart.sh
  Time (mean ± σ):     384.4 ms ±  16.2 ms    [User: 24.1 ms, System: 30.5 ms]
  Range (min … max):   356.1 ms … 462.2 ms    100 runs
 
CONTAINER ID   NAME              CPU %     MEM USAGE / LIMIT    MEM %     NET I/O         BLOCK I/O     PIDS
60c1aeff29bc   zealous_lumiere   0.00%     9.43MiB / 15.62GiB   0.06%     1.55kB / 635B   0B / 20.5kB   13
```

PHP:

```
Benchmark 1: sh helper-coldstart.sh
  Time (mean ± σ):     317.1 ms ±  14.3 ms    [User: 21.7 ms, System: 29.4 ms]
  Range (min … max):   288.7 ms … 354.3 ms    100 runs

CONTAINER ID   NAME                 CPU %     MEM USAGE / LIMIT     MEM %     NET I/O         BLOCK I/O   PIDS
877077d1faa3   dreamy_nightingale   0.00%     7.973MiB / 15.62GiB   0.05%     1.38kB / 628B   0B / 86kB   11
```

Python:

```
Benchmark 1: sh helper-coldstart.sh
  Time (mean ± σ):      1.849 s ±  0.161 s    [User: 0.126 s, System: 0.198 s]
  Range (min … max):    1.585 s …  2.343 s    100 runs

-rw-r--r-- 1 root root 5.4M Aug 25 09:14 code.tar.gz
```

### `sh bench-warmstart.sh` && `docker stats`:

Go:

```
     checks.........................: 100.00% ✓ 382826      ✗ 0     
     data_received..................: 64 MB   1.1 MB/s
     data_sent......................: 31 MB   510 kB/s
     http_req_blocked...............: avg=3.04µs  min=690ns    med=1.79µs  max=4.37ms   p(90)=2.84µs  p(95)=3.31µs 
     http_req_connecting............: avg=425ns   min=0s       med=0s      max=3.8ms    p(90)=0s      p(95)=0s     
     http_req_duration..............: avg=15.56ms min=213.58µs med=12.69ms max=103.14ms p(90)=38.62ms p(95)=46.84ms
       { expected_response:true }...: avg=15.56ms min=213.58µs med=12.69ms max=103.14ms p(90)=38.62ms p(95)=46.84ms
     http_req_failed................: 0.00%   ✓ 0           ✗ 382826
     http_req_receiving.............: avg=39.78µs min=9.44µs   med=29.01µs max=9.42ms   p(90)=44.61µs p(95)=57.2µs 
     http_req_sending...............: avg=12.49µs min=3.6µs    med=8.27µs  max=9.15ms   p(90)=13.34µs p(95)=18.12µs
     http_req_tls_handshaking.......: avg=0s      min=0s       med=0s      max=0s       p(90)=0s      p(95)=0s     
     http_req_waiting...............: avg=15.51ms min=193.89µs med=12.6ms  max=102.18ms p(90)=38.58ms p(95)=46.79ms
     http_reqs......................: 382826  6379.062039/s
     iteration_duration.............: avg=15.65ms min=264.13µs med=12.79ms max=103.21ms p(90)=38.71ms p(95)=46.94ms
     iterations.....................: 382826  6379.062039/s
     vus............................: 100     min=100       max=100 
     vus_max........................: 100     min=100       max=100 

CONTAINER ID   NAME               CPU %     MEM USAGE / LIMIT     MEM %     NET I/O           BLOCK I/O    PIDS
5b49bea61bd2   trusting_volhard   338.15%   1.815GiB / 15.62GiB   11.62%    55.9MB / 93.3MB   0B / 394MB   112
```


Node:

```
     checks.........................: 100.00% ✓ 104343      ✗ 0     
     data_received..................: 22 MB   372 kB/s
     data_sent......................: 8.3 MB  139 kB/s
     http_req_blocked...............: avg=3.07µs  min=721ns   med=1.82µs  max=6.31ms   p(90)=3.11µs  p(95)=3.75µs  
     http_req_connecting............: avg=147ns   min=0s      med=0s      max=623.35µs p(90)=0s      p(95)=0s      
     http_req_duration..............: avg=57.39ms min=4.27ms  med=55.21ms max=2.19s    p(90)=68.89ms p(95)=72.22ms 
       { expected_response:true }...: avg=57.39ms min=4.27ms  med=55.21ms max=2.19s    p(90)=68.89ms p(95)=72.22ms 
     http_req_failed................: 0.00%   ✓ 0           ✗ 104343
     http_req_receiving.............: avg=45.13µs min=12.41µs med=27.65µs max=8.34ms   p(90)=64.06µs p(95)=103.79µs
     http_req_sending...............: avg=14.38µs min=4.15µs  med=8.53µs  max=7.35ms   p(90)=14.98µs p(95)=24.86µs 
     http_req_tls_handshaking.......: avg=0s      min=0s      med=0s      max=0s       p(90)=0s      p(95)=0s      
     http_req_waiting...............: avg=57.33ms min=4.24ms  med=55.15ms max=2.19s    p(90)=68.83ms p(95)=72.16ms 
     http_reqs......................: 104343  1738.318203/s
     iteration_duration.............: avg=57.49ms min=4.33ms  med=55.31ms max=2.2s     p(90)=68.98ms p(95)=72.33ms 
     iterations.....................: 104343  1738.318203/s
     vus............................: 100     min=100       max=100 
     vus_max........................: 100     min=100       max=100 

CONTAINER ID   NAME               CPU %     MEM USAGE / LIMIT     MEM %     NET I/O           BLOCK I/O     PIDS
4f1f54a12dfb   pedantic_vaughan   103.77%   636.7MiB / 15.62GiB   3.98%     15.3MB / 36.1MB   0B / 32.8kB   13
```

PHP:

```
     checks.........................: 100.00% ✓ 184055     ✗ 0     
     data_received..................: 40 MB   672 kB/s
     data_sent......................: 15 MB   245 kB/s
     http_req_blocked...............: avg=3.28µs  min=767ns   med=2.15µs  max=5.49ms   p(90)=3.43µs  p(95)=4.11µs 
     http_req_connecting............: avg=348ns   min=0s      med=0s      max=2.29ms   p(90)=0s      p(95)=0s     
     http_req_duration..............: avg=32.48ms min=13.42ms med=31.43ms max=103.11ms p(90)=38.49ms p(95)=45.17ms
       { expected_response:true }...: avg=32.48ms min=13.42ms med=31.43ms max=103.11ms p(90)=38.49ms p(95)=45.17ms
     http_req_failed................: 0.00%   ✓ 0          ✗ 184055
     http_req_receiving.............: avg=42.51µs min=13.01µs med=35.6µs  max=7.23ms   p(90)=62.44µs p(95)=79.33µs
     http_req_sending...............: avg=13.93µs min=4.39µs  med=10.14µs max=5.6ms    p(90)=18.19µs p(95)=24.36µs
     http_req_tls_handshaking.......: avg=0s      min=0s      med=0s      max=0s       p(90)=0s      p(95)=0s     
     http_req_waiting...............: avg=32.42ms min=13.25ms med=31.38ms max=103.03ms p(90)=38.43ms p(95)=45.1ms 
     http_reqs......................: 184055  3066.40823/s
     iteration_duration.............: avg=32.59ms min=15.24ms med=31.54ms max=103.73ms p(90)=38.61ms p(95)=45.29ms
     iterations.....................: 184055  3066.40823/s
     vus............................: 100     min=100      max=100 
     vus_max........................: 100     min=100      max=100 

CONTAINER ID   NAME              CPU %     MEM USAGE / LIMIT     MEM %     NET I/O           BLOCK I/O     PIDS
d5067755afdd   relaxed_mcnulty   111.80%   961.5MiB / 15.62GiB   6.01%     26.9MB / 53.6MB   0B / 55.9MB   53
```

Python:

❗ Python benchmark only uses 1 VU compared to 100 VUs in other benchmarks.

```
     checks.........................: 100.00% ✓ 21778      ✗ 0    
     data_received..................: 4.0 MB  67 kB/s
     data_sent......................: 1.7 MB  29 kB/s
     http_req_blocked...............: avg=3.73µs  min=1.42µs  med=3.22µs  max=762.73µs p(90)=5.13µs   p(95)=5.72µs  
     http_req_connecting............: avg=24ns    min=0s      med=0s      max=524.47µs p(90)=0s       p(95)=0s      
     http_req_duration..............: avg=2.57ms  min=1.42ms  med=2.34ms  max=39.45ms  p(90)=3.43ms   p(95)=3.78ms  
       { expected_response:true }...: avg=2.57ms  min=1.42ms  med=2.34ms  max=39.45ms  p(90)=3.43ms   p(95)=3.78ms  
     http_req_failed................: 0.00%   ✓ 0          ✗ 21778
     http_req_receiving.............: avg=73.82µs min=21.06µs med=70.76µs max=2.3ms    p(90)=100.86µs p(95)=111.83µs
     http_req_sending...............: avg=19.91µs min=5.69µs  med=18.11µs max=1.51ms   p(90)=28.43µs  p(95)=32.16µs 
     http_req_tls_handshaking.......: avg=0s      min=0s      med=0s      max=0s       p(90)=0s       p(95)=0s      
     http_req_waiting...............: avg=2.48ms  min=1.37ms  med=2.25ms  max=39.31ms  p(90)=3.31ms   p(95)=3.64ms  
     http_reqs......................: 21778   362.959179/s
     iteration_duration.............: avg=2.73ms  min=1.5ms   med=2.5ms   max=39.68ms  p(90)=3.64ms   p(95)=3.99ms  
     iterations.....................: 21778   362.959179/s
     vus............................: 1       min=1        max=1  
     vus_max........................: 1       min=1        max=1  

CONTAINER ID   NAME              CPU %     MEM USAGE / LIMIT     MEM %     NET I/O           BLOCK I/O     PIDS
518f1c0700fd   peaceful_hopper   94.42%    130.5MiB / 15.62GiB   0.82%     3.06MB / 5.27MB   0B / 22.7MB   7
```

---


## Fibonacci function

### `sh bench-build.sh` && `ls -lh code.tar.gz`:

Go:

```
Benchmark 1: sh helper-build.sh
  Time (mean ± σ):     10.354 s ±  0.525 s    [User: 0.014 s, System: 0.017 s]
  Range (min … max):    9.393 s … 11.520 s    25 runs

-rw-r--r-- 1 root root 2.2M Aug 23 11:02 code.tar.gz
```

Node:

```
Benchmark 1: sh helper-build.sh
  Time (mean ± σ):     947.8 ms ±  47.5 ms    [User: 13.5 ms, System: 17.0 ms]
  Range (min … max):   853.9 ms … 1039.7 ms    25 runs

-rw-r--r-- 1 root root 626 Aug 23 10:53 code.tar.gz
```

PHP:

```
Benchmark 1: sh helper-build.sh
  Time (mean ± σ):     536.3 ms ±  32.3 ms    [User: 15.6 ms, System: 16.7 ms]
  Range (min … max):   485.7 ms … 644.1 ms    25 runs

-rw-r--r-- 1 root root 8.5K Aug 25 08:56 code.tar.gz
```

Python:

```
Benchmark 1: sh helper-build.sh
  Time (mean ± σ):      9.957 s ±  0.684 s    [User: 0.015 s, System: 0.020 s]
  Range (min … max):    8.808 s … 11.226 s    25 runs

-rw-r--r-- 1 root root 5.4M Aug 25 09:40 code.tar.gz
```

###  `sh bench-coldstart.sh` && `docker stats`:

Go:

```
Benchmark 1: sh helper-coldstart.sh
  Time (mean ± σ):     356.3 ms ±  26.2 ms    [User: 24.3 ms, System: 32.8 ms]
  Range (min … max):   284.5 ms … 392.6 ms    100 runs

CONTAINER ID   NAME               CPU %     MEM USAGE / LIMIT     MEM %     NET I/O         BLOCK I/O     PIDS
2b6d50d00e75   distracted_fermi   0.00%     1.973MiB / 15.62GiB   0.01%     1.52kB / 630B   0B / 5.35MB   7
```

Node:

```
Benchmark 1: sh helper-coldstart.sh
  Time (mean ± σ):     397.4 ms ±  20.8 ms    [User: 24.7 ms, System: 32.4 ms]
  Range (min … max):   356.7 ms … 459.4 ms    100 runs

CONTAINER ID   NAME            CPU %     MEM USAGE / LIMIT     MEM %     NET I/O         BLOCK I/O     PIDS
f2dc20ffca4d   quirky_panini   0.00%     9.492MiB / 15.62GiB   0.06%     1.94kB / 677B   0B / 16.4kB   13
```

PHP:

```
Benchmark 1: sh helper-coldstart.sh
  Time (mean ± σ):     323.4 ms ±  14.5 ms    [User: 22.1 ms, System: 29.3 ms]
  Range (min … max):   293.8 ms … 374.3 ms    100 runs

CONTAINER ID   NAME                CPU %     MEM USAGE / LIMIT     MEM %     NET I/O         BLOCK I/O   PIDS
6c9510dadaa4   intelligent_haibt   0.00%     7.965MiB / 15.62GiB   0.05%     1.41kB / 586B   0B / 86kB   11
```

Python:

```
Benchmark 1: sh helper-coldstart.sh
  Time (mean ± σ):      1.864 s ±  0.178 s    [User: 0.127 s, System: 0.202 s]
  Range (min … max):    1.592 s …  2.326 s    100 runs

CONTAINER ID   NAME             CPU %     MEM USAGE / LIMIT     MEM %     NET I/O           BLOCK I/O     PIDS
546034cc984a   ecstatic_gates   0.01%     29.52MiB / 15.62GiB   0.18%     3.17kB / 1.74kB   0B / 22.7MB   7
```

### `sh bench-warmstart.sh` && `docker stats`:


Go:

```
     checks.........................: 100.00% ✓ 9069       ✗ 0    
     data_received..................: 1.5 MB  25 kB/s
     data_sent......................: 726 kB  12 kB/s
     http_req_blocked...............: avg=16.04µs  min=901ns   med=2.65µs   max=2.89ms p(90)=4.27µs   p(95)=5.14µs 
     http_req_connecting............: avg=11.28µs  min=0s      med=0s       max=2.78ms p(90)=0s       p(95)=0s     
     http_req_duration..............: avg=665.8ms  min=45.85ms med=598.77ms max=4.29s  p(90)=949.66ms p(95)=1.4s   
       { expected_response:true }...: avg=665.8ms  min=45.85ms med=598.77ms max=4.29s  p(90)=949.66ms p(95)=1.4s   
     http_req_failed................: 0.00%   ✓ 0          ✗ 9069 
     http_req_receiving.............: avg=58.28µs  min=12.96µs med=50.65µs  max=3.97ms p(90)=82.8µs   p(95)=92.75µs
     http_req_sending...............: avg=16.32µs  min=4.93µs  med=12.5µs   max=3.19ms p(90)=21.25µs  p(95)=25.46µs
     http_req_tls_handshaking.......: avg=0s       min=0s      med=0s       max=0s     p(90)=0s       p(95)=0s     
     http_req_waiting...............: avg=665.72ms min=45.8ms  med=598.69ms max=4.29s  p(90)=949.6ms  p(95)=1.4s   
     http_reqs......................: 9069    149.828399/s
     iteration_duration.............: avg=665.94ms min=45.95ms med=598.89ms max=4.29s  p(90)=949.79ms p(95)=1.41s  
     iterations.....................: 9069    149.828399/s
     vus............................: 100     min=100      max=100
     vus_max........................: 100     min=100      max=100

CONTAINER ID   NAME               CPU %     MEM USAGE / LIMIT     MEM %     NET I/O           BLOCK I/O     PIDS
5c76d8f8cf69   vigorous_solomon   785.67%   56.84MiB / 15.62GiB   0.36%     1.32MB / 2.62MB   0B / 5.35MB   14
```


Node:

```
     checks.........................: 100.00% ✓ 435      ✗ 0    
     data_received..................: 92 kB   1.2 kB/s
     data_sent......................: 36 kB   476 B/s
     http_req_blocked...............: avg=287.96µs min=1.07µs  med=2.79µs  max=3.22ms p(90)=800.79µs p(95)=2.68ms  
     http_req_connecting............: avg=179.65µs min=0s      med=0s      max=2.7ms  p(90)=526.83µs p(95)=1.58ms  
     http_req_duration..............: avg=15.53s   min=3.21s   med=5.41s   max=1m13s  p(90)=1m5s     p(95)=1m9s    
       { expected_response:true }...: avg=15.53s   min=3.21s   med=5.41s   max=1m13s  p(90)=1m5s     p(95)=1m9s    
     http_req_failed................: 0.00%   ✓ 0        ✗ 435  
     http_req_receiving.............: avg=69.02µs  min=15.79µs med=44.03µs max=1.26ms p(90)=103.47µs p(95)=147.9µs 
     http_req_sending...............: avg=147.12ms min=5.64µs  med=12.93µs max=5.45s  p(90)=925.09µs p(95)=993.91µs
     http_req_tls_handshaking.......: avg=0s       min=0s      med=0s      max=0s     p(90)=0s       p(95)=0s      
     http_req_waiting...............: avg=15.38s   min=3.21s   med=5.41s   max=1m13s  p(90)=1m5s     p(95)=1m9s    
     http_reqs......................: 435     5.783792/s
     iteration_duration.............: avg=15.53s   min=3.22s   med=5.41s   max=1m13s  p(90)=1m5s     p(95)=1m9s    
     iterations.....................: 435     5.783792/s
     vus............................: 2       min=2      max=100
     vus_max........................: 100     min=100    max=100

CONTAINER ID   NAME              CPU %     MEM USAGE / LIMIT     MEM %     NET I/O         BLOCK I/O     PIDS
058c85f9e4cf   ecstatic_edison   100.48%   16.64MiB / 15.62GiB   0.10%     102kB / 149kB   0B / 16.4kB   13
```

PHP:

```
     checks.........................: 100.00% ✓ 123      ✗ 0    
     data_received..................: 27 kB   295 B/s
     data_sent......................: 15 kB   163 B/s
     http_req_blocked...............: avg=343.7µs  min=2.49µs   med=175.16µs max=1.97ms   p(90)=874.79µs p(95)=1.32ms  
     http_req_connecting............: avg=264.45µs min=0s       med=117.79µs max=1.54ms   p(90)=669.72µs p(95)=819.25µs
     http_req_duration..............: avg=42.81s   min=628.3ms  med=44.46s   max=1m15s    p(90)=1m12s    p(95)=1m13s   
       { expected_response:true }...: avg=42.81s   min=628.3ms  med=44.46s   max=1m15s    p(90)=1m12s    p(95)=1m13s   
     http_req_failed................: 0.00%   ✓ 0        ✗ 123  
     http_req_receiving.............: avg=105.08µs min=74.03µs  med=100.68µs max=182.88µs p(90)=136.65µs p(95)=148.09µs
     http_req_sending...............: avg=217.73µs min=12.9µs   med=116µs    max=1ms      p(90)=937.84µs p(95)=983.91µs
     http_req_tls_handshaking.......: avg=0s       min=0s       med=0s       max=0s       p(90)=0s       p(95)=0s      
     http_req_waiting...............: avg=42.81s   min=628.13ms med=44.46s   max=1m15s    p(90)=1m12s    p(95)=1m13s   
     http_reqs......................: 123     1.366602/s
     iteration_duration.............: avg=42.81s   min=629.45ms med=44.46s   max=1m15s    p(90)=1m12s    p(95)=1m13s   
     iterations.....................: 123     1.366602/s
     vus............................: 60      min=60     max=100
     vus_max........................: 100     min=100    max=100

CONTAINER ID   NAME                CPU %     MEM USAGE / LIMIT     MEM %     NET I/O         BLOCK I/O   PIDS
1a31b78aaef0   practical_swirles   100.30%   13.07MiB / 15.62GiB   0.08%     77kB / 78.8kB   0B / 86kB   11
```

Python:

```
     checks.........................: 100.00% ✓ 40      ✗ 0    
     data_received..................: 7.3 kB  81 B/s
     data_sent......................: 9.9 kB  110 B/s
     http_req_blocked...............: avg=2.86ms   min=888.37µs med=2.95ms   max=3.63ms   p(90)=3.43ms   p(95)=3.51ms  
     http_req_connecting............: avg=2.75ms   min=834.25µs med=2.86ms   max=3.6ms    p(90)=3.36ms   p(95)=3.47ms  
     http_req_duration..............: avg=47.34s   min=8.29s    med=47.8s    max=1m24s    p(90)=1m17s    p(95)=1m24s   
       { expected_response:true }...: avg=47.34s   min=8.29s    med=47.8s    max=1m24s    p(90)=1m17s    p(95)=1m24s   
     http_req_failed................: 0.00%   ✓ 0       ✗ 40   
     http_req_receiving.............: avg=119.09µs min=64.81µs  med=117.55µs max=227.67µs p(90)=156.86µs p(95)=173.27µs
     http_req_sending...............: avg=452.35µs min=117.11µs med=413.52µs max=1.78ms   p(90)=756.73µs p(95)=791.44µs
     http_req_tls_handshaking.......: avg=0s       min=0s       med=0s       max=0s       p(90)=0s       p(95)=0s      
     http_req_waiting...............: avg=47.34s   min=8.29s    med=47.8s    max=1m24s    p(90)=1m17s    p(95)=1m24s   
     http_reqs......................: 40      0.44443/s
     iteration_duration.............: avg=47.34s   min=8.29s    med=47.81s   max=1m24s    p(90)=1m17s    p(95)=1m24s   
     iterations.....................: 40      0.44443/s
     vus............................: 84      min=84    max=100
     vus_max........................: 100     min=100   max=100

CONTAINER ID   NAME            CPU %     MEM USAGE / LIMIT     MEM %     NET I/O           BLOCK I/O     PIDS
add7be77fde2   sweet_mclaren   102.19%   30.42MiB / 15.62GiB   0.19%     59.9kB / 47.4kB   0B / 22.7MB   11
```

---


## Scraper function

### `sh bench-build.sh` && `ls -lh code.tar.gz`:

Go:

```
Benchmark 1: sh helper-build.sh
  Time (mean ± σ):     12.376 s ±  0.545 s    [User: 0.013 s, System: 0.016 s]
  Range (min … max):   11.410 s … 13.465 s    25 runs

-rw-r--r-- 1 root root 3.1M Aug 23 12:05 code.tar.gz
```

Node:

```
Benchmark 1: sh helper-build.sh
  Time (mean ± σ):      7.007 s ±  0.316 s    [User: 0.013 s, System: 0.017 s]
  Range (min … max):    6.437 s …  7.618 s    25 runs

-rw-r--r-- 1 root root 625 Aug 23 11:28 code.tar.gz
```

PHP:

```
Benchmark 1: sh helper-build.sh
  Time (mean ± σ):      1.519 s ±  0.068 s    [User: 0.014 s, System: 0.017 s]
  Range (min … max):    1.424 s …  1.681 s    25 runs

-rw-r--r-- 1 root root 3.5M Aug 25 09:08 code.tar.gz
```

Python:

```
Benchmark 1: sh helper-build.sh
  Time (mean ± σ):     15.938 s ±  1.088 s    [User: 0.020 s, System: 0.020 s]
  Range (min … max):   14.303 s … 18.031 s    25 runs

-rw-r--r-- 1 root root 11M Aug 25 10:20 code.tar.gz
```

###  `sh bench-coldstart.sh` && `docker stats`:

Go:

```
Benchmark 1: sh helper-coldstart.sh
  Time (mean ± σ):     357.3 ms ±  12.3 ms    [User: 23.8 ms, System: 32.4 ms]
  Range (min … max):   336.3 ms … 398.8 ms    100 runs

CONTAINER ID   NAME          CPU %     MEM USAGE / LIMIT     MEM %     NET I/O         BLOCK I/O     PIDS
faa216aed6fd   sharp_nobel   0.00%     2.516MiB / 15.62GiB   0.02%     1.73kB / 630B   0B / 7.79MB   7
```

Node:

```
Benchmark 1: sh helper-coldstart.sh
  Time (mean ± σ):      1.918 s ±  0.114 s    [User: 0.078 s, System: 0.117 s]
  Range (min … max):    1.739 s …  2.441 s    100 runs


CONTAINER ID   NAME              CPU %     MEM USAGE / LIMIT     MEM %     NET I/O           BLOCK I/O   PIDS
8983e05afdb1   suspicious_borg   0.00%     59.14MiB / 15.62GiB   0.37%     2.66kB / 1.47kB   0B / 41MB   13
```

PHP:

```
Benchmark 1: sh helper-coldstart.sh
  Time (mean ± σ):     444.3 ms ±  20.0 ms    [User: 29.9 ms, System: 42.1 ms]
  Range (min … max):   416.6 ms … 515.0 ms    100 runs

CONTAINER ID   NAME             CPU %     MEM USAGE / LIMIT     MEM %     NET I/O        BLOCK I/O   PIDS
aea79482ad08   modest_haslett   0.00%     10.34MiB / 15.62GiB   0.06%     1.6kB / 736B   0B / 13MB   11
```

Python:

```
Benchmark 1: sh helper-coldstart.sh
  Time (mean ± σ):      2.739 s ±  0.218 s    [User: 0.165 s, System: 0.271 s]
  Range (min … max):    2.320 s …  3.502 s    100 runs

CONTAINER ID   NAME               CPU %     MEM USAGE / LIMIT     MEM %     NET I/O           BLOCK I/O     PIDS
0ecdf1d40660   practical_curran   0.01%     47.51MiB / 15.62GiB   0.30%     3.84kB / 2.17kB   0B / 45.6MB   7
```

### `sh bench-warmstart.sh` && `docker stats`:


Go:

```
     checks.........................: 100.00% ✓ 181205      ✗ 0     
     data_received..................: 33 MB   550 kB/s
     data_sent......................: 15 MB   242 kB/s
     http_req_blocked...............: avg=3.72µs  min=748ns    med=2.28µs  max=3.85ms   p(90)=3.43µs  p(95)=4.01µs 
     http_req_connecting............: avg=374ns   min=0s       med=0s      max=2.56ms   p(90)=0s      p(95)=0s     
     http_req_duration..............: avg=32.98ms min=742.67µs med=31.93ms max=182.02ms p(90)=69.77ms p(95)=84.8ms 
       { expected_response:true }...: avg=32.98ms min=742.67µs med=31.93ms max=182.02ms p(90)=69.77ms p(95)=84.8ms 
     http_req_failed................: 0.00%   ✓ 0           ✗ 181205
     http_req_receiving.............: avg=48.73µs min=12.16µs  med=36.52µs max=7.71ms   p(90)=55.22µs p(95)=71.83µs
     http_req_sending...............: avg=14.67µs min=4.15µs   med=10.22µs max=5.83ms   p(90)=16.49µs p(95)=21.09µs
     http_req_tls_handshaking.......: avg=0s      min=0s       med=0s      max=0s       p(90)=0s      p(95)=0s     
     http_req_waiting...............: avg=32.92ms min=716.68µs med=31.86ms max=181.99ms p(90)=69.7ms  p(95)=84.75ms
     http_reqs......................: 181205  3018.551586/s
     iteration_duration.............: avg=33.1ms  min=809.64µs med=32.04ms max=182.07ms p(90)=69.89ms p(95)=84.93ms
     iterations.....................: 181205  3018.551586/s
     vus............................: 100     min=100       max=100 
     vus_max........................: 100     min=100       max=100 

CONTAINER ID   NAME            CPU %     MEM USAGE / LIMIT     MEM %     NET I/O           BLOCK I/O    PIDS
58b2c27d6c0c   amazing_lewin   436.96%   1.683GiB / 15.62GiB   10.78%    25.8MB / 50.1MB   0B / 300MB   113
```

Node:

```
     checks.........................: 100.00% ✓ 32325      ✗ 0    
     data_received..................: 7.3 MB  121 kB/s
     data_sent......................: 2.6 MB  43 kB/s
     http_req_blocked...............: avg=4.37µs   min=891ns   med=2.1µs    max=4.06ms p(90)=3.48µs   p(95)=4.19µs  
     http_req_connecting............: avg=1.13µs   min=0s      med=0s       max=2.45ms p(90)=0s       p(95)=0s      
     http_req_duration..............: avg=185.77ms min=18.81ms med=176.8ms  max=4.05s  p(90)=203.83ms p(95)=210.86ms
       { expected_response:true }...: avg=185.77ms min=18.81ms med=176.8ms  max=4.05s  p(90)=203.83ms p(95)=210.86ms
     http_req_failed................: 0.00%   ✓ 0          ✗ 32325
     http_req_receiving.............: avg=45.66µs  min=16.01µs med=40.76µs  max=2.06ms p(90)=65.78µs  p(95)=77.06µs 
     http_req_sending...............: avg=14.11µs  min=4.77µs  med=11µs     max=3.86ms p(90)=20.19µs  p(95)=25.02µs 
     http_req_tls_handshaking.......: avg=0s       min=0s      med=0s       max=0s     p(90)=0s       p(95)=0s      
     http_req_waiting...............: avg=185.71ms min=18.69ms med=176.75ms max=4.05s  p(90)=203.76ms p(95)=210.8ms 
     http_reqs......................: 32325   537.577414/s
     iteration_duration.............: avg=185.87ms min=18.98ms med=176.91ms max=4.05s  p(90)=203.92ms p(95)=210.98ms
     iterations.....................: 32325   537.577414/s
     vus............................: 100     min=100      max=100
     vus_max........................: 100     min=100      max=100

CONTAINER ID   NAME             CPU %     MEM USAGE / LIMIT     MEM %     NET I/O         BLOCK I/O   PIDS
4021df46d569   angry_dubinsky   129.71%   624.4MiB / 15.62GiB   3.90%     4.54MB / 11MB   0B / 41MB   13
```

PHP:

```
     checks.........................: 100.00% ✓ 31556      ✗ 0    
     data_received..................: 7.3 MB  121 kB/s
     data_sent......................: 2.5 MB  42 kB/s
     http_req_blocked...............: avg=8.06µs   min=1.11µs  med=2.83µs   max=8.79ms   p(90)=4.51µs   p(95)=5.4µs   
     http_req_connecting............: avg=3.64µs   min=0s      med=0s       max=4.89ms   p(90)=0s       p(95)=0s      
     http_req_duration..............: avg=190.09ms min=86.84ms med=183.28ms max=429.07ms p(90)=218.56ms p(95)=225.84ms
       { expected_response:true }...: avg=190.09ms min=86.84ms med=183.28ms max=429.07ms p(90)=218.56ms p(95)=225.84ms
     http_req_failed................: 0.00%   ✓ 0          ✗ 31556
     http_req_receiving.............: avg=60.39µs  min=18.01µs med=53.87µs  max=11.63ms  p(90)=84.49µs  p(95)=97.53µs 
     http_req_sending...............: avg=20.13µs  min=5.58µs  med=14µs     max=7.86ms   p(90)=24.04µs  p(95)=28.56µs 
     http_req_tls_handshaking.......: avg=0s       min=0s      med=0s       max=0s       p(90)=0s       p(95)=0s      
     http_req_waiting...............: avg=190.01ms min=86.72ms med=183.21ms max=428.99ms p(90)=218.48ms p(95)=225.75ms
     http_reqs......................: 31556   525.148719/s
     iteration_duration.............: avg=190.23ms min=86.99ms med=183.42ms max=429.21ms p(90)=218.7ms  p(95)=225.99ms
     iterations.....................: 31556   525.148719/s
     vus............................: 100     min=100      max=100
     vus_max........................: 100     min=100      max=100

CONTAINER ID   NAME                      CPU %     MEM USAGE / LIMIT   MEM %     NET I/O           BLOCK I/O   PIDS
cb797d035f03   mystifying_varahamihira   125.13%   373MiB / 15.62GiB   2.33%     4.61MB / 11.4MB   0B / 13MB   11
```

Python:

❗ Python benchmark only uses 1 VU compared to 100 VUs in other benchmarks.

```
     checks.........................: 100.00% ✓ 1482      ✗ 0   
     data_received..................: 288 kB  4.8 kB/s
     data_sent......................: 119 kB  2.0 kB/s
     http_req_blocked...............: avg=4.72µs  min=2.1µs   med=4.06µs  max=441.17µs p(90)=5.56µs  p(95)=6.34µs  
     http_req_connecting............: avg=127ns   min=0s      med=0s      max=188.57µs p(90)=0s      p(95)=0s      
     http_req_duration..............: avg=40.27ms min=28.42ms med=38.02ms max=375.2ms  p(90)=50.8ms  p(95)=55.84ms 
       { expected_response:true }...: avg=40.27ms min=28.42ms med=38.02ms max=375.2ms  p(90)=50.8ms  p(95)=55.84ms 
     http_req_failed................: 0.00%   ✓ 0         ✗ 1482
     http_req_receiving.............: avg=92.12µs min=60.48µs med=87.89µs max=1.47ms   p(90)=112µs   p(95)=122.38µs
     http_req_sending...............: avg=24.7µs  min=12.25µs med=21.39µs max=2.04ms   p(90)=30.08µs p(95)=34.46µs 
     http_req_tls_handshaking.......: avg=0s      min=0s      med=0s      max=0s       p(90)=0s      p(95)=0s      
     http_req_waiting...............: avg=40.15ms min=28.29ms med=37.89ms max=374.7ms  p(90)=50.7ms  p(95)=55.71ms 
     http_reqs......................: 1482    24.696522/s
     iteration_duration.............: avg=40.46ms min=28.6ms  med=38.21ms max=376.05ms p(90)=51.06ms p(95)=56.04ms 
     iterations.....................: 1482    24.696522/s
     vus............................: 1       min=1       max=1 
     vus_max........................: 1       min=1       max=1 

NAMES
CONTAINER ID   NAME               CPU %     MEM USAGE / LIMIT    MEM %     NET I/O         BLOCK I/O     PIDS
12e472713195   frosty_ramanujan   100.53%   68.9MiB / 15.62GiB   0.43%     216kB / 442kB   0B / 45.6MB   8
```