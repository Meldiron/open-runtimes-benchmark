## Specifications

```
16 GB Memory / 8 Intel vCPUs / 480 GB Disk / FRA1 - Ubuntu 24.04 (LTS) x64
```

> DigtialOcean

## Preparation

Server was prepared with commands mentioned in `PREPARE.md` file.

## Disclaimers

Some runtimes are single-threaded. With libraries it can be made multi-threaded. To do compasasion of performance potention in each runtime, I recommend to devide iterations by cpu usage, and use that to compare between runtimes. Same recommendation when comparing memory consumption.

Python runtime was facing some concurrency issues during benchmark. For that reason, only 1 concurrent request was sent during benchmark, resulting in bad overall results for Python. When in ratio with CPU usage, results for Python are more representative.

Benchmarks ideas were designed to test Go feature and it's performance agaisnt other runtimes that Open Runtimes supports.

## Benchmark

Every folder is a separate benchmark. Benchmark results can be found in `RESULT.md`.

### Hello world

Hello world is a simple benchmarks helps us understand speed of build, cold-start speed and memory consumption in a minimal application.

### Fibonacci

Fibonacci benchmarks allows us to understand concurrency model of each runtime with CPU heavy operation. Keep in mind, runtimes with bad performance likely didn't use all CPU cores. This could be achieved with additional code, but benchmark focuses on native approach of the runtime.

### Scraper

Scraper benchmark includes multiple libraries, and focuses on speed on build and cold-start of a bigger function. Some interpreted languages might under-perform, and it could be solved by introducing a library with a build step, to minify the code into single file. This benchmark focuses on native approch, so thise improvements were not done.

## Future plans

Open Runtimes has following runtimes that has not been benchmarked yet: C++, Dotnet, Java, Kotlin, Ruby, Swift

Those benchmarks can be automated to always represent latest Open Rnutimes releases.