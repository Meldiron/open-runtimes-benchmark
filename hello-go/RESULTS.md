## `sh bench-build.sh`:

```
Time (mean ± σ):      9.900 s ±  0.214 s    [User: 0.014 s, System: 0.015 s]
Range (min … max):    9.446 s … 10.469 s    25 runs
```

##  `sh bench-coldstart.sh`:

```
Time (mean ± σ):     222.5 ms ±   9.9 ms    [User: 15.4 ms, System: 19.3 ms]
Range (min … max):   201.4 ms … 253.2 ms    100 runs
```

`docker stats` afterwards:

```
CONTAINER ID   NAME               CPU %     MEM USAGE / LIMIT     MEM %     NET I/O       BLOCK I/O     PIDS
056a81ade49c   recursing_lamarr   0.00%     1.629MiB / 15.62GiB   0.01%     964B / 138B   0B / 5.36MB   6
```

## `sh bench-warmstart.sh`:


```
     checks.........................: 100.00% ✓ 386011      ✗ 0     
     data_received..................: 65 MB   1.1 MB/s
     data_sent......................: 31 MB   515 kB/s
     http_req_blocked...............: avg=2.78µs  min=709ns    med=1.78µs  max=3.63ms   p(90)=2.84µs  p(95)=3.32µs 
     http_req_connecting............: avg=111ns   min=0s       med=0s      max=2.16ms   p(90)=0s      p(95)=0s     
     http_req_duration..............: avg=15.43ms min=214.68µs med=15.89ms max=106.35ms p(90)=38.17ms p(95)=45.14ms
       { expected_response:true }...: avg=15.43ms min=214.68µs med=15.89ms max=106.35ms p(90)=38.17ms p(95)=45.14ms
     http_req_failed................: 0.00%   ✓ 0           ✗ 386011
     http_req_receiving.............: avg=40.54µs min=9.31µs   med=28.81µs max=9.21ms   p(90)=45.1µs  p(95)=60.82µs
     http_req_sending...............: avg=12.92µs min=3.56µs   med=8.28µs  max=10.04ms  p(90)=13.48µs p(95)=18.43µs
     http_req_tls_handshaking.......: avg=0s      min=0s       med=0s      max=0s       p(90)=0s      p(95)=0s     
     http_req_waiting...............: avg=15.38ms min=196.3µs  med=15.82ms max=106.26ms p(90)=38.11ms p(95)=45.09ms
     http_reqs......................: 386011  6432.201252/s
     iteration_duration.............: avg=15.52ms min=266.63µs med=15.98ms max=106.46ms p(90)=38.26ms p(95)=45.24ms
     iterations.....................: 386011  6432.201252/s
     vus............................: 100     min=100       max=100 
     vus_max........................: 100     min=100       max=100 


running (1m00.0s), 000/100 VUs, 386011 complete and 0 interrupted iterations
```

`docker stats` in 55th second:

```
CONTAINER ID   NAME              CPU %     MEM USAGE / LIMIT     MEM %     NET I/O           BLOCK I/O    PIDS
eb5d582d70ae   clever_brattain   318.53%   1.567GiB / 15.62GiB   10.03%    48.1MB / 79.9MB   0B / 569MB   111
```

