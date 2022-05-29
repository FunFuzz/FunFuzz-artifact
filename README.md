FunFuzz Artifact
========
[FunFuzz](https://github.com/FunFuzz/FunFuzz) is a function-oriented fuzzing framework for smart contracts.

# Setup

```
$ docker build -t funfuzz-artifact -f Dockerfile
```

# Launch

To run FunFuzz on D1

```
$ chmod +x ./launchD1.sh && ./launchD1.sh
```

To run FunFuzz on D2

```
$ chmod +x ./launchD2.sh && ./launchD2.sh
```

To run FunFuzz on complicated contracts

```
$ chmod +x ./launchCC.sh && ./launchCC.sh
```