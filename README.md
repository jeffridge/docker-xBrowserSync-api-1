# Simple xBrowserSync-Api docker setup

## Requirements

- bash
- git
- docker
- docker-compose

## Quick Start

### 1. Copy this repository

```sh
git clone https://github.com/mng-au/docker-xBrowserSync-api.git
cd docker-xBrowserSync-api
```

### 2. Build
Build docker instances
```sh
/bin/bash ./build.sh
```

### 3. Test

1. Start docker instances in foreground
```sh
docker-compose up
```

2. Navigate to <http://127.0.0.1:8080> or host address of your host machine, with any browser of your choice.

3. Check is xBrowserSync Api running

4. Press `CTRL+C` to terminate docker instances

### 4. Run as daemon
```sh
docker-compose up -d
```
