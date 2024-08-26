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

Bun:

```
Benchmark 1: sh helper-build.sh
  Time (mean ± σ):     334.9 ms ±  12.2 ms    [User: 13.6 ms, System: 16.2 ms]
  Range (min … max):   312.6 ms … 372.6 ms    25 runs

-rw-r--r-- 1 root root 495 Aug 25 12:50 code.tar.gz
```

Deno:

```
Benchmark 1: sh helper-build.sh
  Time (mean ± σ):     866.4 ms ±  71.1 ms    [User: 15.1 ms, System: 16.7 ms]
  Range (min … max):   787.4 ms … 1127.9 ms    25 runs

-rw-r--r-- 1 root root 538K Aug 25 13:05 code.tar.gz
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

Dart:

```
Benchmark 1: sh helper-build.sh
  Time (mean ± σ):      9.777 s ±  1.052 s    [User: 0.017 s, System: 0.019 s]
  Range (min … max):    8.525 s … 12.158 s    25 runs

-rw-r--r-- 1 root root 2.5M Aug 25 10:52 code.tar.gz
```

Dotnet:

```
Benchmark 1: sh helper-build.sh
  Time (mean ± σ):      8.452 s ±  0.846 s    [User: 0.016 s, System: 0.019 s]
  Range (min … max):    7.387 s … 11.439 s    25 runs

-rw-r--r-- 1 root root 321K Aug 25 13:42 code.tar.gz
```

Ruby:

```
Benchmark 1: sh helper-build.sh
  Time (mean ± σ):     15.059 s ±  0.973 s    [User: 0.017 s, System: 0.019 s]
  Range (min … max):   13.311 s … 16.791 s    25 runs

-rw-r--r-- 1 root root 3.2M Aug 25 14:45 code.tar.gz
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

Bun:

```
Benchmark 1: sh helper-coldstart.sh
  Time (mean ± σ):     363.3 ms ±  33.5 ms    [User: 24.4 ms, System: 33.8 ms]
  Range (min … max):   317.0 ms … 554.3 ms    100 runs

CONTAINER ID   NAME                 CPU %     MEM USAGE / LIMIT     MEM %     NET I/O         BLOCK I/O     PIDS
e9437c3c9e91   objective_lovelace   0.02%     18.14MiB / 15.62GiB   0.11%     1.62kB / 534B   0B / 12.3kB   5
```

Deno:

```
Benchmark 1: sh helper-coldstart.sh
  Time (mean ± σ):     392.5 ms ±  17.5 ms    [User: 25.7 ms, System: 35.7 ms]
  Range (min … max):   361.2 ms … 455.7 ms    100 runs

CONTAINER ID   NAME                  CPU %     MEM USAGE / LIMIT     MEM %     NET I/O           BLOCK I/O     PIDS
8c8443f2a614   zealous_nightingale   0.00%     18.27MiB / 15.62GiB   0.11%     8.24kB / 1.96kB   0B / 2.72MB   11
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

CONTAINER ID   NAME                    CPU %     MEM USAGE / LIMIT     MEM %     NET I/O         BLOCK I/O     PIDS
de9d2f74657d   condescending_meitner   0.01%     29.36MiB / 15.62GiB   0.18%     1.51kB / 528B   0B / 22.7MB   7
```

Dart:

```
Benchmark 1: sh helper-coldstart.sh
  Time (mean ± σ):     328.0 ms ±  30.7 ms    [User: 22.7 ms, System: 29.5 ms]
  Range (min … max):   283.1 ms … 406.1 ms    100 runs

CONTAINER ID   NAME                   CPU %     MEM USAGE / LIMIT     MEM %     NET I/O         BLOCK I/O     PIDS
71c72e787b06   condescending_merkle   0.00%     3.652MiB / 15.62GiB   0.02%     1.58kB / 776B   0B / 6.67MB   6
```

Dotnet:

```
Benchmark 1: sh helper-coldstart.sh
  Time (mean ± σ):     676.1 ms ±  60.6 ms    [User: 34.5 ms, System: 49.9 ms]
  Range (min … max):   612.0 ms … 1122.1 ms    100 runs

CONTAINER ID   NAME           CPU %     MEM USAGE / LIMIT     MEM %     NET I/O         BLOCK I/O    PIDS
2fb0d2234bbb   eager_darwin   0.15%     21.38MiB / 15.62GiB   0.13%     1.63kB / 713B   0B / 864kB   28
```

Ruby:

```
Benchmark 1: sh helper-coldstart.sh
  Time (mean ± σ):      1.790 s ±  0.190 s    [User: 0.121 s, System: 0.191 s]
  Range (min … max):    1.506 s …  2.401 s    100 runs

CONTAINER ID   NAME              CPU %     MEM USAGE / LIMIT     MEM %     NET I/O           BLOCK I/O     PIDS
630031bb1067   strange_haslett   0.01%     32.98MiB / 15.62GiB   0.21%     3.04kB / 1.72kB   0B / 17.2MB   9
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

Bun:

```
     checks.........................: 100.00% ✓ 218197     ✗ 0     
     data_received..................: 36 MB   607 kB/s
     data_sent......................: 18 MB   291 kB/s
     http_req_blocked...............: avg=3.22µs  min=842ns   med=2.47µs  max=6.26ms   p(90)=3.54µs  p(95)=4.2µs  
     http_req_connecting............: avg=172ns   min=0s      med=0s      max=4.27ms   p(90)=0s      p(95)=0s     
     http_req_duration..............: avg=27.38ms min=6.82ms  med=26.59ms max=126.49ms p(90)=32.4ms  p(95)=36.38ms
       { expected_response:true }...: avg=27.38ms min=6.82ms  med=26.59ms max=126.49ms p(90)=32.4ms  p(95)=36.38ms
     http_req_failed................: 0.00%   ✓ 0          ✗ 218197
     http_req_receiving.............: avg=46.11µs min=13.95µs med=42.38µs max=8.74ms   p(90)=58.92µs p(95)=66.4µs 
     http_req_sending...............: avg=15.42µs min=4.66µs  med=12.09µs max=12.64ms  p(90)=20.79µs p(95)=23.95µs
     http_req_tls_handshaking.......: avg=0s      min=0s      med=0s      max=0s       p(90)=0s      p(95)=0s     
     http_req_waiting...............: avg=27.31ms min=6.76ms  med=26.53ms max=126.4ms  p(90)=32.33ms p(95)=36.3ms 
     http_reqs......................: 218197  3635.04605/s
     iteration_duration.............: avg=27.48ms min=6.92ms  med=26.7ms  max=128.97ms p(90)=32.52ms p(95)=36.5ms 
     iterations.....................: 218197  3635.04605/s
     vus............................: 100     min=100      max=100 
     vus_max........................: 100     min=100      max=100 

CONTAINER ID   NAME           CPU %     MEM USAGE / LIMIT     MEM %     NET I/O           BLOCK I/O     PIDS
ad11d0959f8e   fervent_cray   100.40%   1.271GiB / 15.62GiB   8.14%     31.8MB / 51.4MB   0B / 85.7MB   13
```

Deno:

```
     checks.........................: 100.00% ✓ 130254      ✗ 0     
     data_received..................: 25 MB   412 kB/s
     data_sent......................: 10 MB   174 kB/s
     http_req_blocked...............: avg=3.89µs  min=746ns   med=2.14µs  max=7.35ms   p(90)=3.53µs  p(95)=4.12µs 
     http_req_connecting............: avg=613ns   min=0s      med=0s      max=3.63ms   p(90)=0s      p(95)=0s     
     http_req_duration..............: avg=45.94ms min=8.32ms  med=43.21ms max=266.62ms p(90)=60.54ms p(95)=67.25ms
       { expected_response:true }...: avg=45.94ms min=8.32ms  med=43.21ms max=266.62ms p(90)=60.54ms p(95)=67.25ms
     http_req_failed................: 0.00%   ✓ 0           ✗ 130254
     http_req_receiving.............: avg=51.63µs min=11.58µs med=28.88µs max=13.61ms  p(90)=64.23µs p(95)=90.36µs
     http_req_sending...............: avg=16.86µs min=4.01µs  med=9.87µs  max=7.88ms   p(90)=16.14µs p(95)=21.91µs
     http_req_tls_handshaking.......: avg=0s      min=0s      med=0s      max=0s       p(90)=0s      p(95)=0s     
     http_req_waiting...............: avg=45.87ms min=8.22ms  med=43.14ms max=266.57ms p(90)=60.46ms p(95)=67.17ms
     http_reqs......................: 130254  2169.695431/s
     iteration_duration.............: avg=46.05ms min=8.39ms  med=43.33ms max=266.76ms p(90)=60.67ms p(95)=67.39ms
     iterations.....................: 130254  2169.695431/s
     vus............................: 100     min=100       max=100 
     vus_max........................: 100     min=100       max=100 

CONTAINER ID   NAME               CPU %     MEM USAGE / LIMIT     MEM %     NET I/O           BLOCK I/O     PIDS
1648493a0e0d   vibrant_elbakyan   222.71%   976.1MiB / 15.62GiB   6.10%     18.8MB / 39.3MB   0B / 24.9MB   43
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

Dart:

```
     checks.........................: 100.00% ✓ 205673      ✗ 0     
     data_received..................: 62 MB   1.0 MB/s
     data_sent......................: 17 MB   274 kB/s
     http_req_blocked...............: avg=3.66µs  min=807ns   med=2.58µs  max=2.44ms   p(90)=3.75µs  p(95)=4.5µs   
     http_req_connecting............: avg=155ns   min=0s      med=0s      max=1.96ms   p(90)=0s      p(95)=0s      
     http_req_duration..............: avg=29.03ms min=1.62ms  med=28.41ms max=174.07ms p(90)=35.84ms p(95)=38.6ms  
       { expected_response:true }...: avg=29.03ms min=1.62ms  med=28.41ms max=174.07ms p(90)=35.84ms p(95)=38.6ms  
     http_req_failed................: 0.00%   ✓ 0           ✗ 205673
     http_req_receiving.............: avg=60.73µs min=14.39µs med=49.3µs  max=8.2ms    p(90)=83.96µs p(95)=116.47µs
     http_req_sending...............: avg=16.53µs min=4.71µs  med=12.1µs  max=5.03ms   p(90)=21.13µs p(95)=27.34µs 
     http_req_tls_handshaking.......: avg=0s      min=0s      med=0s      max=0s       p(90)=0s      p(95)=0s      
     http_req_waiting...............: avg=28.95ms min=1.53ms  med=28.34ms max=173.99ms p(90)=35.75ms p(95)=38.51ms 
     http_reqs......................: 205673  3427.041909/s
     iteration_duration.............: avg=29.15ms min=1.84ms  med=28.53ms max=175.01ms p(90)=35.98ms p(95)=38.75ms 
     iterations.....................: 205673  3427.041909/s
     vus............................: 100     min=100       max=100 
     vus_max........................: 100     min=100       max=100 

CONTAINER ID   NAME               CPU %     MEM USAGE / LIMIT    MEM %     NET I/O         BLOCK I/O     PIDS
f7d012a7a0de   reverent_jemison   202.42%   1014MiB / 15.62GiB   6.34%     43MB / 88.4MB   0B / 79.7MB   40
```

Dotnet:

```
     checks.........................: 100.00% ✓ 337204      ✗ 0     
     data_received..................: 62 MB   1.0 MB/s
     data_sent......................: 27 MB   450 kB/s
     http_req_blocked...............: avg=3.59µs  min=735ns    med=2.16µs  max=8.68ms   p(90)=3.68µs  p(95)=4.37µs 
     http_req_connecting............: avg=40ns    min=0s       med=0s      max=487.86µs p(90)=0s      p(95)=0s     
     http_req_duration..............: avg=17.64ms min=545.27µs med=16.28ms max=267.41ms p(90)=23.95ms p(95)=28.7ms 
       { expected_response:true }...: avg=17.64ms min=545.27µs med=16.28ms max=267.41ms p(90)=23.95ms p(95)=28.7ms 
     http_req_failed................: 0.00%   ✓ 0           ✗ 337204
     http_req_receiving.............: avg=77.4µs  min=11.3µs   med=27.99µs max=18.65ms  p(90)=64.45µs p(95)=99.06µs
     http_req_sending...............: avg=21.49µs min=4.1µs    med=10.19µs max=19.75ms  p(90)=16.99µs p(95)=24.99µs
     http_req_tls_handshaking.......: avg=0s      min=0s       med=0s      max=0s       p(90)=0s      p(95)=0s     
     http_req_waiting...............: avg=17.54ms min=510.27µs med=16.21ms max=267.34ms p(90)=23.77ms p(95)=28.43ms
     http_reqs......................: 337204  5618.740298/s
     iteration_duration.............: avg=17.77ms min=640.95µs med=16.41ms max=267.76ms p(90)=24.11ms p(95)=28.9ms 
     iterations.....................: 337204  5618.740298/s
     vus............................: 100     min=100       max=100 
     vus_max........................: 100     min=100       max=100 

CONTAINER ID   NAME           CPU %     MEM USAGE / LIMIT    MEM %     NET I/O           BLOCK I/O        PIDS
67ee05393ef7   busy_wozniak   296.01%   1.55GiB / 15.62GiB   9.92%     46.6MB / 80.2MB   12.3kB / 152MB   34
```

Ruby:

```
     checks.........................: 100.00% ✓ 41422      ✗ 0    
     data_received..................: 6.8 MB  107 kB/s
     data_sent......................: 3.3 MB  52 kB/s
     http_req_blocked...............: avg=31.81µs  min=1.16µs  med=3.45µs  max=1.81ms   p(90)=20.65µs  p(95)=260.81µs
     http_req_connecting............: avg=19.54µs  min=0s      med=0s      max=910.79µs p(90)=0s       p(95)=173.26µs
     http_req_duration..............: avg=149.4ms  min=1.08ms  med=6.3ms   max=4s       p(90)=12.62ms  p(95)=1.46s   
       { expected_response:true }...: avg=149.4ms  min=1.08ms  med=6.3ms   max=4s       p(90)=12.62ms  p(95)=1.46s   
     http_req_failed................: 0.00%   ✓ 0          ✗ 41422
     http_req_receiving.............: avg=79.99µs  min=21.93µs med=69.47µs max=4.61ms   p(90)=121.62µs p(95)=149.43µs
     http_req_sending...............: avg=23.75µs  min=6.38µs  med=18.73µs max=2.28ms   p(90)=39.34µs  p(95)=52.2µs  
     http_req_tls_handshaking.......: avg=0s       min=0s      med=0s      max=0s       p(90)=0s       p(95)=0s      
     http_req_waiting...............: avg=149.29ms min=1.02ms  med=6.2ms   max=4s       p(90)=12.5ms   p(95)=1.46s   
     http_reqs......................: 41422   647.639859/s
     iteration_duration.............: avg=149.58ms min=1.2ms   med=6.46ms  max=4s       p(90)=12.84ms  p(95)=1.46s   
     iterations.....................: 41422   647.639859/s
     vus............................: 25      min=25       max=100
     vus_max........................: 100     min=100      max=100

CONTAINER ID   NAME                 CPU %     MEM USAGE / LIMIT     MEM %     NET I/O           BLOCK I/O     PIDS
d47abf819e6e   determined_feynman   106.93%   231.7MiB / 15.62GiB   1.45%     7.26MB / 10.5MB   0B / 17.2MB   13
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

Bun:

```
Benchmark 1: sh helper-build.sh
  Time (mean ± σ):     409.5 ms ±  32.9 ms    [User: 17.0 ms, System: 22.3 ms]
  Range (min … max):   357.7 ms … 478.7 ms    25 runs

-rw-r--r-- 1 root root 568 Aug 25 12:44 code.tar.gz
```

Deno:

```
Benchmark 1: sh helper-build.sh
  Time (mean ± σ):     873.6 ms ±  61.3 ms    [User: 14.9 ms, System: 17.2 ms]
  Range (min … max):   795.0 ms … 1041.7 ms    25 runs

-rw-r--r-- 1 root root 538K Aug 25 13:05 code.tar.gz
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

Dart:

```
Benchmark 1: sh helper-build.sh
  Time (mean ± σ):     10.243 s ±  0.513 s    [User: 0.015 s, System: 0.018 s]
  Range (min … max):    9.557 s … 11.569 s    25 runs

-rw-r--r-- 1 root root 2.5M Aug 25 11:11 code.tar.gz
```

Dotnet:

```
Benchmark 1: sh helper-build.sh
  Time (mean ± σ):      7.978 s ±  0.703 s    [User: 0.015 s, System: 0.018 s]
  Range (min … max):    6.976 s …  9.526 s    25 runs

-rw-r--r-- 1 root root 321K Aug 25 13:53 code.tar.gz
```

Ruby:

```
Benchmark 1: sh helper-build.sh
  Time (mean ± σ):     14.396 s ±  0.770 s    [User: 0.016 s, System: 0.018 s]
  Range (min … max):   13.374 s … 15.874 s    25 runs

-rw-r--r-- 1 root root 3.2M Aug 25 14:59 code.tar.gz
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

Bun:

```
Benchmark 1: sh helper-coldstart.sh
  Time (mean ± σ):     329.8 ms ±  23.6 ms    [User: 22.5 ms, System: 29.4 ms]
  Range (min … max):   296.9 ms … 503.9 ms    100 runs

CONTAINER ID   NAME           CPU %     MEM USAGE / LIMIT     MEM %     NET I/O         BLOCK I/O     PIDS
49d61d7c79a2   focused_kare   0.02%     18.21MiB / 15.62GiB   0.11%     1.66kB / 576B   0B / 12.3kB   5
```

Deno:

```
Benchmark 1: sh helper-coldstart.sh
  Time (mean ± σ):     445.9 ms ±  54.7 ms    [User: 30.0 ms, System: 43.7 ms]
  Range (min … max):   388.2 ms … 758.5 ms    100 runs

CONTAINER ID   NAME            CPU %     MEM USAGE / LIMIT     MEM %     NET I/O          BLOCK I/O    PIDS
d8384a482185   sweet_satoshi   0.02%     18.21MiB / 15.62GiB   0.11%     8.1kB / 1.96kB   0B / 160kB   11
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

Dart:

```
Benchmark 1: sh helper-coldstart.sh
  Time (mean ± σ):     338.1 ms ±  33.1 ms    [User: 22.9 ms, System: 31.4 ms]
  Range (min … max):   291.4 ms … 444.5 ms    100 runs

CONTAINER ID   NAME                 CPU %     MEM USAGE / LIMIT     MEM %     NET I/O         BLOCK I/O     PIDS
b4e26cfe492c   recursing_poincare   0.00%     3.648MiB / 15.62GiB   0.02%     1.66kB / 830B   0B / 6.67MB   6
```

Dotnet:

```
Benchmark 1: sh helper-coldstart.sh
  Time (mean ± σ):     724.7 ms ±  60.4 ms    [User: 38.5 ms, System: 55.7 ms]
  Range (min … max):   599.7 ms … 934.8 ms    100 runs

CONTAINER ID   NAME               CPU %     MEM USAGE / LIMIT    MEM %     NET I/O        BLOCK I/O    PIDS
87501c173725   recursing_panini   0.11%     21.2MiB / 15.62GiB   0.13%     1.7kB / 767B   0B / 864kB   28
```

Ruby:

```
Benchmark 1: sh helper-coldstart.sh
  Time (mean ± σ):      1.762 s ±  0.204 s    [User: 0.115 s, System: 0.191 s]
  Range (min … max):    1.532 s …  2.804 s    100 runs

CONTAINER ID   NAME                  CPU %     MEM USAGE / LIMIT     MEM %     NET I/O           BLOCK I/O     PIDS
32141e375d04   hopeful_nightingale   0.01%     32.98MiB / 15.62GiB   0.21%     2.96kB / 1.66kB   0B / 17.2MB   9
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

Bun:

```
     checks.........................: 100.00% ✓ 732       ✗ 0    
     data_received..................: 120 kB  1.7 kB/s
     data_sent......................: 59 kB   834 B/s
     http_req_blocked...............: avg=138.63µs min=2.38µs   med=4.28µs  max=4.52ms p(90)=158.21µs p(95)=808.43µs
     http_req_connecting............: avg=84.12µs  min=0s       med=0s      max=2.65ms p(90)=100.94µs p(95)=395.04µs
     http_req_duration..............: avg=8.86s    min=274.01ms med=9.39s   max=19.5s  p(90)=9.82s    p(95)=10.15s  
       { expected_response:true }...: avg=8.86s    min=274.01ms med=9.39s   max=19.5s  p(90)=9.82s    p(95)=10.15s  
     http_req_failed................: 0.00%   ✓ 0         ✗ 732  
     http_req_receiving.............: avg=99.46µs  min=58.44µs  med=91.91µs max=1.05ms p(90)=123.29µs p(95)=134.21µs
     http_req_sending...............: avg=64.65µs  min=12.6µs   med=22.09µs max=1.82ms p(90)=64.86µs  p(95)=205.55µs
     http_req_tls_handshaking.......: avg=0s       min=0s       med=0s      max=0s     p(90)=0s       p(95)=0s      
     http_req_waiting...............: avg=8.86s    min=273.27ms med=9.39s   max=19.5s  p(90)=9.82s    p(95)=10.15s  
     http_reqs......................: 732     10.419732/s
     iteration_duration.............: avg=8.86s    min=276.21ms med=9.39s   max=19.5s  p(90)=9.82s    p(95)=10.15s  
     iterations.....................: 732     10.419732/s
     vus............................: 3       min=3       max=100
     vus_max........................: 100     min=100     max=100

CONTAINER ID   NAME           CPU %     MEM USAGE / LIMIT     MEM %     NET I/O         BLOCK I/O     PIDS
b1d7d4a6fbe7   loving_payne   100.46%   30.14MiB / 15.62GiB   0.19%     131kB / 208kB   0B / 12.3kB   14
```

Deno:

```
     checks.........................: 100.00% ✓ 381      ✗ 0    
     data_received..................: 71 kB   1.0 kB/s
     data_sent......................: 31 kB   435 B/s
     http_req_blocked...............: avg=400.4µs  min=827ns    med=2.73µs  max=5.01ms p(90)=1.31ms   p(95)=3.29ms  
     http_req_connecting............: avg=288.41µs min=0s       med=0s      max=4.34ms p(90)=846.62µs p(95)=1.64ms  
     http_req_duration..............: avg=16.94s   min=382.46ms med=17.97s  max=29.69s p(90)=19.05s   p(95)=23.93s  
       { expected_response:true }...: avg=16.94s   min=382.46ms med=17.97s  max=29.69s p(90)=19.05s   p(95)=23.93s  
     http_req_failed................: 0.00%   ✓ 0        ✗ 381  
     http_req_receiving.............: avg=44.75µs  min=12.42µs  med=28.42µs max=1.82ms p(90)=70.67µs  p(95)=96.84µs 
     http_req_sending...............: avg=149.09µs min=4.85µs   med=12.25µs max=3.42ms p(90)=222.62µs p(95)=389.01µs
     http_req_tls_handshaking.......: avg=0s       min=0s       med=0s      max=0s     p(90)=0s       p(95)=0s      
     http_req_waiting...............: avg=16.94s   min=382.29ms med=17.97s  max=29.69s p(90)=19.05s   p(95)=23.93s  
     http_reqs......................: 381     5.432425/s
     iteration_duration.............: avg=16.94s   min=384.6ms  med=17.97s  max=29.69s p(90)=19.05s   p(95)=23.93s  
     iterations.....................: 381     5.432425/s
     vus............................: 3       min=3      max=100
     vus_max........................: 100     min=100    max=100

CONTAINER ID   NAME             CPU %     MEM USAGE / LIMIT     MEM %     NET I/O         BLOCK I/O     PIDS
0b3a315a51e4   exciting_tesla   100.19%   33.21MiB / 15.62GiB   0.21%     102kB / 133kB   0B / 2.73MB   27
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

Dart:

```
     checks.........................: 100.00% ✓ 764       ✗ 0    
     data_received..................: 228 kB  3.6 kB/s
     data_sent......................: 61 kB   974 B/s
     http_req_blocked...............: avg=55.8µs  min=1.04µs   med=3.85µs  max=1.97ms   p(90)=170.47µs p(95)=347.36µs
     http_req_connecting............: avg=34.05µs min=0s       med=0s      max=1.37ms   p(90)=108.8µs  p(95)=248.6µs 
     http_req_duration..............: avg=8.14s   min=553.93ms med=7.75s   max=44.31s   p(90)=8.23s    p(95)=19.94s  
       { expected_response:true }...: avg=8.14s   min=553.93ms med=7.75s   max=44.31s   p(90)=8.23s    p(95)=19.94s  
     http_req_failed................: 0.00%   ✓ 0         ✗ 764  
     http_req_receiving.............: avg=83.99µs min=18µs     med=71.92µs max=676.92µs p(90)=128.39µs p(95)=173.46µs
     http_req_sending...............: avg=48.56µs min=5.94µs   med=18.22µs max=1.7ms    p(90)=117.82µs p(95)=190.47µs
     http_req_tls_handshaking.......: avg=0s      min=0s       med=0s      max=0s       p(90)=0s       p(95)=0s      
     http_req_waiting...............: avg=8.14s   min=553.66ms med=7.75s   max=44.31s   p(90)=8.23s    p(95)=19.94s  
     http_reqs......................: 764     12.176005/s
     iteration_duration.............: avg=8.14s   min=554.67ms med=7.75s   max=44.31s   p(90)=8.23s    p(95)=19.94s  
     iterations.....................: 764     12.176005/s
     vus............................: 73      min=73      max=100
     vus_max........................: 100     min=100     max=100

CONTAINER ID   NAME          CPU %     MEM USAGE / LIMIT     MEM %     NET I/O         BLOCK I/O     PIDS
19bee9cf82bc   busy_darwin   100.90%   30.02MiB / 15.62GiB   0.19%     183kB / 357kB   0B / 6.67MB   19
```

Dotnet:

```
     checks.........................: 100.00% ✓ 7593       ✗ 0    
     data_received..................: 1.4 MB  23 kB/s
     data_sent......................: 607 kB  10 kB/s
     http_req_blocked...............: avg=23.58µs  min=785ns   med=2.46µs   max=9.56ms p(90)=4.13µs  p(95)=5.15µs  
     http_req_connecting............: avg=6.52µs   min=0s      med=0s       max=1.78ms p(90)=0s      p(95)=0s      
     http_req_duration..............: avg=794.01ms min=74.72ms med=692.59ms max=6.72s  p(90)=1.14s   p(95)=1.23s   
       { expected_response:true }...: avg=794.01ms min=74.72ms med=692.59ms max=6.72s  p(90)=1.14s   p(95)=1.23s   
     http_req_failed................: 0.00%   ✓ 0          ✗ 7593 
     http_req_receiving.............: avg=75.6µs   min=13.81µs med=33.97µs  max=9.95ms p(90)=73.92µs p(95)=120.98µs
     http_req_sending...............: avg=27.06µs  min=4.77µs  med=11.24µs  max=8.96ms p(90)=21.05µs p(95)=34.73µs 
     http_req_tls_handshaking.......: avg=0s       min=0s      med=0s       max=0s     p(90)=0s      p(95)=0s      
     http_req_waiting...............: avg=793.91ms min=74.69ms med=692.55ms max=6.72s  p(90)=1.14s   p(95)=1.23s   
     http_reqs......................: 7593    125.396763/s
     iteration_duration.............: avg=794.17ms min=76.93ms med=692.67ms max=6.73s  p(90)=1.14s   p(95)=1.23s   
     iterations.....................: 7593    125.396763/s
     vus............................: 100     min=100      max=100
     vus_max........................: 100     min=100      max=100

CONTAINER ID   NAME            CPU %     MEM USAGE / LIMIT     MEM %     NET I/O           BLOCK I/O    PIDS
28ec22987fab   bold_goldberg   795.35%   127.2MiB / 15.62GiB   0.80%     1.13MB / 2.37MB   0B / 864kB   40
```

Ruby:

```
     checks.........................: 100.00% ✓ 65       ✗ 0    
     data_received..................: 10 kB   116 B/s
     data_sent......................: 11 kB   127 B/s
     http_req_blocked...............: avg=331.41µs min=1.45µs  med=5.49µs  max=2.01ms   p(90)=1.17ms   p(95)=1.27ms  
     http_req_connecting............: avg=281.76µs min=0s      med=0s      max=1.37ms   p(90)=1.04ms   p(95)=1.14ms  
     http_req_duration..............: avg=25.46s   min=5.56s   med=6.87s   max=1m29s    p(90)=1m20s    p(95)=1m25s   
       { expected_response:true }...: avg=25.46s   min=5.56s   med=6.87s   max=1m29s    p(90)=1m20s    p(95)=1m25s   
     http_req_failed................: 0.00%   ✓ 0        ✗ 65   
     http_req_receiving.............: avg=122.55µs min=26.72µs med=108.6µs max=321.12µs p(90)=177.42µs p(95)=219.85µs
     http_req_sending...............: avg=152.47µs min=13.63µs med=31.42µs max=3.32ms   p(90)=382.78µs p(95)=561.15µs
     http_req_tls_handshaking.......: avg=0s       min=0s      med=0s      max=0s       p(90)=0s       p(95)=0s      
     http_req_waiting...............: avg=25.46s   min=5.56s   med=6.87s   max=1m29s    p(90)=1m20s    p(95)=1m25s   
     http_reqs......................: 65      0.722172/s
     iteration_duration.............: avg=25.46s   min=5.56s   med=6.87s   max=1m29s    p(90)=1m20s    p(95)=1m25s   
     iterations.....................: 65      0.722172/s
     vus............................: 78      min=78     max=100
     vus_max........................: 100     min=100    max=100

CONTAINER ID   NAME               CPU %     MEM USAGE / LIMIT     MEM %     NET I/O           BLOCK I/O     PIDS
be973dcdb571   hardcore_villani   100.63%   34.07MiB / 15.62GiB   0.21%     54.9kB / 45.1kB   0B / 17.2MB   13
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

-rw-r--r-- 1 root root 4.3M Aug 26 11:22 code.tar.gz
```

Bun:

```
Benchmark 1: sh helper-build.sh
  Time (mean ± σ):      2.646 s ±  0.122 s    [User: 0.015 s, System: 0.017 s]
  Range (min … max):    2.414 s …  2.870 s    25 runs

-rw-r--r-- 1 root root 4.3M Aug 25 12:42 code.tar.gz
```

Deno:

```
Benchmark 1: sh helper-build.sh
  Time (mean ± σ):      7.425 s ±  1.005 s    [User: 0.024 s, System: 0.033 s]
  Range (min … max):    5.968 s …  9.847 s    25 runs

-rw-r--r-- 1 root root 3.3M Aug 25 13:27 code.tar.gz
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

Dart:

```
Benchmark 1: sh helper-build.sh
  Time (mean ± σ):     15.239 s ±  0.919 s    [User: 0.016 s, System: 0.019 s]
  Range (min … max):   13.712 s … 17.211 s    25 runs

-rw-r--r-- 1 root root 3.0M Aug 25 12:08 code.tar.gz
```

Dotnet:

```
Benchmark 1: sh helper-build.sh
  Time (mean ± σ):      8.820 s ±  0.508 s    [User: 0.016 s, System: 0.018 s]
  Range (min … max):    8.071 s …  9.913 s    25 runs

-rw-r--r-- 1 root root 534K Aug 25 14:19 code.tar.gz
```

Ruby:

```
Benchmark 1: sh helper-build.sh
  Time (mean ± σ):     15.427 s ±  0.724 s    [User: 0.018 s, System: 0.018 s]
  Range (min … max):   14.361 s … 16.946 s    25 runs

-rw-r--r-- 1 root root 8.0M Aug 25 15:45 code.tar.gz
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

Bun:

```
Benchmark 1: sh helper-coldstart.sh
  Time (mean ± σ):      1.841 s ±  0.170 s    [User: 0.093 s, System: 0.151 s]
  Range (min … max):    1.483 s …  2.289 s    100 runs

CONTAINER ID   NAME            CPU %     MEM USAGE / LIMIT     MEM %     NET I/O           BLOCK I/O   PIDS
99cbfc624627   funny_goodall   0.01%     124.4MiB / 15.62GiB   0.78%     2.88kB / 1.45kB   0B / 41MB   11
```

Deno:

```
Benchmark 1: sh helper-coldstart.sh
  Time (mean ± σ):      1.574 s ±  0.168 s    [User: 0.073 s, System: 0.117 s]
  Range (min … max):    1.257 s …  2.091 s    100 runs

CONTAINER ID   NAME              CPU %     MEM USAGE / LIMIT     MEM %     NET I/O          BLOCK I/O     PIDS
1d087298b0ea   hopeful_haslett   0.01%     70.41MiB / 15.62GiB   0.44%     9.34kB / 2.9kB   0B / 30.1MB   11
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

Dart:

```
Benchmark 1: sh helper-coldstart.sh
  Time (mean ± σ):     397.6 ms ±  87.3 ms    [User: 26.9 ms, System: 36.8 ms]
  Range (min … max):   312.2 ms … 1126.7 ms    100 runs

CONTAINER ID   NAME                CPU %     MEM USAGE / LIMIT     MEM %     NET I/O        BLOCK I/O     PIDS
c7c893092c6c   competent_johnson   0.00%     4.605MiB / 15.62GiB   0.03%     1.8kB / 830B   0B / 8.04MB   7
```

Dotnet:

```
Benchmark 1: sh helper-coldstart.sh
  Time (mean ± σ):     770.9 ms ±  78.7 ms    [User: 40.8 ms, System: 60.9 ms]
  Range (min … max):   650.0 ms … 1263.8 ms    100 runs

CONTAINER ID   NAME            CPU %     MEM USAGE / LIMIT     MEM %     NET I/O        BLOCK I/O    PIDS
420d73ed6ce2   bold_margulis   0.02%     21.76MiB / 15.62GiB   0.14%     1.7kB / 767B   0B / 1.4MB   28
```

Ruby:

```
Benchmark 1: sh helper-coldstart.sh
  Time (mean ± σ):      2.325 s ±  0.216 s    [User: 0.135 s, System: 0.219 s]
  Range (min … max):    1.976 s …  3.266 s    100 runs

CONTAINER ID   NAME            CPU %     MEM USAGE / LIMIT     MEM %     NET I/O           BLOCK I/O   PIDS
9f12b269f86c   zealous_noyce   0.01%     48.27MiB / 15.62GiB   0.30%     3.26kB / 1.88kB   0B / 49MB   9
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

Bun:

```
     checks.........................: 100.00% ✓ 50345      ✗ 0    
     data_received..................: 8.9 MB  149 kB/s
     data_sent......................: 4.0 MB  67 kB/s
     http_req_blocked...............: avg=5.11µs   min=926ns   med=2.27µs   max=5.23ms   p(90)=3.46µs   p(95)=4.24µs  
     http_req_connecting............: avg=2.04µs   min=0s      med=0s       max=4.7ms    p(90)=0s       p(95)=0s      
     http_req_duration..............: avg=119.13ms min=86.75ms med=112.89ms max=919.77ms p(90)=142.23ms p(95)=159.94ms
       { expected_response:true }...: avg=119.13ms min=86.75ms med=112.89ms max=919.77ms p(90)=142.23ms p(95)=159.94ms
     http_req_failed................: 0.00%   ✓ 0          ✗ 50345
     http_req_receiving.............: avg=44.79µs  min=13.73µs med=39.88µs  max=9.47ms   p(90)=58.46µs  p(95)=69.61µs 
     http_req_sending...............: avg=14.57µs  min=4.82µs  med=11.44µs  max=5.35ms   p(90)=20.15µs  p(95)=23.68µs 
     http_req_tls_handshaking.......: avg=0s       min=0s      med=0s       max=0s       p(90)=0s       p(95)=0s      
     http_req_waiting...............: avg=119.07ms min=86.7ms  med=112.83ms max=919.59ms p(90)=142.16ms p(95)=159.86ms
     http_reqs......................: 50345   837.884945/s
     iteration_duration.............: avg=119.23ms min=86.84ms med=112.99ms max=920.14ms p(90)=142.37ms p(95)=160.07ms
     iterations.....................: 50345   837.884945/s
     vus............................: 100     min=100      max=100
     vus_max........................: 100     min=100      max=100

CONTAINER ID   NAME              CPU %     MEM USAGE / LIMIT     MEM %     NET I/O           BLOCK I/O   PIDS
dbca9769f043   upbeat_franklin   123.13%   923.6MiB / 15.62GiB   5.78%     7.38MB / 15.6MB   0B / 41MB   21
```

Deno:

```
     checks.........................: 100.00% ✓ 5649      ✗ 0    
     data_received..................: 1.1 MB  19 kB/s
     data_sent......................: 452 kB  7.5 kB/s
     http_req_blocked...............: avg=42.09µs min=807ns    med=2.65µs  max=6.32ms p(90)=4.38µs  p(95)=5.47µs  
     http_req_connecting............: avg=34.43µs min=0s       med=0s      max=5.91ms p(90)=0s      p(95)=0s      
     http_req_duration..............: avg=1.06s   min=490.56ms med=1.03s   max=2.74s  p(90)=1.22s   p(95)=1.31s   
       { expected_response:true }...: avg=1.06s   min=490.56ms med=1.03s   max=2.74s  p(90)=1.22s   p(95)=1.31s   
     http_req_failed................: 0.00%   ✓ 0         ✗ 5649 
     http_req_receiving.............: avg=62.14µs min=13.91µs  med=36.5µs  max=6.16ms p(90)=84.52µs p(95)=109.81µs
     http_req_sending...............: avg=29.44µs min=4.68µs   med=11.93µs max=4.75ms p(90)=21.43µs p(95)=32.5µs  
     http_req_tls_handshaking.......: avg=0s      min=0s       med=0s      max=0s     p(90)=0s      p(95)=0s      
     http_req_waiting...............: avg=1.06s   min=490.51ms med=1.03s   max=2.73s  p(90)=1.22s   p(95)=1.31s   
     http_reqs......................: 5649    93.635119/s
     iteration_duration.............: avg=1.06s   min=490.66ms med=1.03s   max=2.74s  p(90)=1.22s   p(95)=1.31s   
     iterations.....................: 5649    93.635119/s
     vus............................: 100     min=100     max=100
     vus_max........................: 100     min=100     max=100

CONTAINER ID   NAME            CPU %     MEM USAGE / LIMIT   MEM %     NET I/O          BLOCK I/O     PIDS
ee65d2097641   elastic_tesla   114.76%   214MiB / 15.62GiB   1.34%     854kB / 1.86MB   0B / 30.1MB   43
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

Dart:

```
     checks.........................: 100.00% ✓ 66504       ✗ 0    
     data_received..................: 21 MB   346 kB/s
     data_sent......................: 5.3 MB  89 kB/s
     http_req_blocked...............: avg=6.96µs  min=777ns   med=2.95µs  max=4.19ms   p(90)=4.67µs   p(95)=5.53µs  
     http_req_connecting............: avg=2.9µs   min=0s      med=0s      max=4.03ms   p(90)=0s       p(95)=0s      
     http_req_duration..............: avg=90.1ms  min=44.44ms med=88.43ms max=285.23ms p(90)=107.58ms p(95)=112.44ms
       { expected_response:true }...: avg=90.1ms  min=44.44ms med=88.43ms max=285.23ms p(90)=107.58ms p(95)=112.44ms
     http_req_failed................: 0.00%   ✓ 0           ✗ 66504
     http_req_receiving.............: avg=71.1µs  min=15.95µs med=58.54µs max=6.65ms   p(90)=101.32µs p(95)=127.84µs
     http_req_sending...............: avg=19.14µs min=4.82µs  med=14.06µs max=4.91ms   p(90)=25.8µs   p(95)=33.26µs 
     http_req_tls_handshaking.......: avg=0s      min=0s      med=0s      max=0s       p(90)=0s       p(95)=0s      
     http_req_waiting...............: avg=90.01ms min=44.35ms med=88.34ms max=284.68ms p(90)=107.48ms p(95)=112.34ms
     http_reqs......................: 66504   1107.512772/s
     iteration_duration.............: avg=90.25ms min=44.59ms med=88.58ms max=285.68ms p(90)=107.75ms p(95)=112.61ms
     iterations.....................: 66504   1107.512772/s
     vus............................: 100     min=100       max=100
     vus_max........................: 100     min=100       max=100

CONTAINER ID   NAME            CPU %     MEM USAGE / LIMIT     MEM %     NET I/O           BLOCK I/O     PIDS
929b70c64360   gifted_wilbur   168.34%   684.6MiB / 15.62GiB   4.28%     14.1MB / 33.8MB   0B / 20.6MB   39
```

Dotnet:

```
     checks.........................: 100.00% ✓ 148941      ✗ 0     
     data_received..................: 29 MB   490 kB/s
     data_sent......................: 12 MB   199 kB/s
     http_req_blocked...............: avg=4.61µs  min=738ns   med=2.27µs  max=6.57ms   p(90)=3.8µs   p(95)=4.53µs  
     http_req_connecting............: avg=386ns   min=0s      med=0s      max=2.6ms    p(90)=0s      p(95)=0s      
     http_req_duration..............: avg=40.14ms min=6.18ms  med=33.64ms max=498.22ms p(90)=55.62ms p(95)=76.11ms 
       { expected_response:true }...: avg=40.14ms min=6.18ms  med=33.64ms max=498.22ms p(90)=55.62ms p(95)=76.11ms 
     http_req_failed................: 0.00%   ✓ 0           ✗ 148941
     http_req_receiving.............: avg=60.11µs min=12.63µs med=32.08µs max=10.95ms  p(90)=71.49µs p(95)=102.07µs
     http_req_sending...............: avg=18.32µs min=4.22µs  med=10.5µs  max=10.77ms  p(90)=18.17µs p(95)=25.06µs 
     http_req_tls_handshaking.......: avg=0s      min=0s      med=0s      max=0s       p(90)=0s      p(95)=0s      
     http_req_waiting...............: avg=40.06ms min=6.14ms  med=33.57ms max=498.03ms p(90)=55.54ms p(95)=76.03ms 
     http_reqs......................: 148941  2481.657088/s
     iteration_duration.............: avg=40.27ms min=6.27ms  med=33.77ms max=499.75ms p(90)=55.76ms p(95)=76.27ms 
     iterations.....................: 148941  2481.657088/s
     vus............................: 100     min=100       max=100 
     vus_max........................: 100     min=100       max=100 

CONTAINER ID   NAME                 CPU %     MEM USAGE / LIMIT     MEM %     NET I/O           BLOCK I/O    PIDS
945a25e067c4   nervous_cartwright   479.54%   3.132GiB / 15.62GiB   20.06%    21.3MB / 41.9MB   0B / 118MB   38
```

Ruby:

❗ Ruby benchmark only uses 1 VU compared to 100 VUs in other benchmarks.

```
     checks.........................: 100.00% ✓ 5423      ✗ 0   
     data_received..................: 943 kB  16 kB/s
     data_sent......................: 434 kB  7.2 kB/s
     http_req_blocked...............: avg=3.93µs  min=1.82µs  med=3.28µs  max=968.35µs p(90)=4.95µs   p(95)=5.53µs  
     http_req_connecting............: avg=146ns   min=0s      med=0s      max=793.81µs p(90)=0s       p(95)=0s      
     http_req_duration..............: avg=10.87ms min=8.08ms  med=10.48ms max=1.83s    p(90)=11.61ms  p(95)=12.03ms 
       { expected_response:true }...: avg=10.87ms min=8.08ms  med=10.48ms max=1.83s    p(90)=11.61ms  p(95)=12.03ms 
     http_req_failed................: 0.00%   ✓ 0         ✗ 5423
     http_req_receiving.............: avg=85.18µs min=41.13µs med=80.94µs max=403.74µs p(90)=108.51µs p(95)=124.76µs
     http_req_sending...............: avg=20.28µs min=8.68µs  med=18.48µs max=965.47µs p(90)=27.29µs  p(95)=30.69µs 
     http_req_tls_handshaking.......: avg=0s      min=0s      med=0s      max=0s       p(90)=0s       p(95)=0s      
     http_req_waiting...............: avg=10.76ms min=8.01ms  med=10.38ms max=1.83s    p(90)=11.5ms   p(95)=11.91ms 
     http_reqs......................: 5423    90.373011/s
     iteration_duration.............: avg=11.04ms min=8.2ms   med=10.65ms max=1.83s    p(90)=11.8ms   p(95)=12.22ms 
     iterations.....................: 5423    90.373011/s
     vus............................: 1       min=1       max=1 
     vus_max........................: 1       min=1       max=1 
     
CONTAINER ID   NAME                    CPU %     MEM USAGE / LIMIT     MEM %     NET I/O          BLOCK I/O   PIDS
35de58ced1d1   infallible_mcclintock   56.11%    164.9MiB / 15.62GiB   1.03%     776kB / 1.27MB   0B / 49MB   11
```