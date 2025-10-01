This is a fork of [athenarc/UDFBench](https://github.com/athenarc/UDFBench). The goal of this fork is to provide Docker support for an easier setup.

First build the necessary containers:

```
docker compose -f docker-pg.yaml up -d
```

Connect to the `app` container:

```
docker compose -f docker-pg.yaml exec app bash
```

First, deploy UDFBench, e.g.:

```
./automations/deploy_udfbench.sh ssd yes yes yes postgres
```

And then you can run experiments, e.g.:

```
./automations/run_udfbench.sh postgres t t0 cold ssd false 2
```
