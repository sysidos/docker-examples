# CockroachDB Docker Examples

## Examples
* [NGINX Example](example-nginx/README.md) - Simple 3 node cluster with `NGINX` as the load balancer
* [HAProxy Example](example-haproxy/README.md) - Simple 3 node cluster with `HAProxy` as the load balancer
* [Enterprise Backup Example](example-enterprise-backup/README.md) - CockroachDB Enterprise `BACKUP` to `NGINX` based "File Server"
* [YCSB Functional Example](example-ycsb/README.md) - Building and running [YCSB](https://github.com/brianfrankcooper/YCSB) against a 3 node CockroachDB cluster
* [OLTPBench Functional Example](example-oltpbench/README.md) - Building and running a fork of [OLTPBench](https://github.com/timveil-cockroach/oltpbench) against a 3 node CockroachDB cluster
* [Secure Cluster Example - HAProxy](example-secure/README.md) - A **secure** 3 node cluster with `HAProxy` as the load balancer
* [Secure Cluster Example - NGINIX](example-secure-nginx/README.md) - A **secure** 3 node cluster with `NGINIX` as the load balancer


## Useful commands

### Generate and Download Debug Archive
Generate `debug.zip` file on `crdb-0`.  For more details see https://www.cockroachlabs.com/docs/stable/debug-zip.html
```bash
docker-compose exec crdb-0 /cockroach/cockroach debug zip ./cockroach-data/logs/debug.zip --insecure
```

Copy `debug.zip` from `crdb-0` to current local directory
```bash
docker cp crdb-0:/cockroach/cockroach-data/logs/debug.zip .
```

### Prune Docker Images, etc.
Prune all images matching label
```bash
docker system prune -a -f --volumes --filter "label=maintainer=tjveil@gmail.com"
```

Prune all images
```bash
docker system prune -a -f --volumes
```

