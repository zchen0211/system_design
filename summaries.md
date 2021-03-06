# A Summary of All System Design Questions
- http://www.cnblogs.com/duanxz/
- System Design interview
    - https://github.com/checkcheckzz/system-design-interview

## System Design Interview: 
- Basic
    - DNS: paid service (not running on your server)
    - url -> IP address, HTTP requests sent to your web server
    - 1. web browser: generates and renders html
    - 2. mobile browser: JSON

## 100 users (SQL, NoSQL)
Relational: RDBMS or SQL  
popular (MySQL, Oracle, PostgreSQL)  
- support upto 10 million
- table, easy to understand

## NoSQL:
- CouchDB, Neo4j, Cassandra, HBase, Amazon DynamoDB
- 4 categories:
    - 1. K-V stores
    - 2. Graph stores
    - 3. Column stores
    - 4. Document stores
- can't perform join
- super low latency
- unstructured data
- massive amounts of data (> 5TB)

- vertical scaling (scale up)
- horizontal scaling (scale out) # always more desirable

## 1,000 users (LB, replication)
- Load balancer
- Database replication:
    - master DB: writes
    - slave DB: reads (several replications)
- writes only on master: improve performance
- analytics on slaves: 
    - 1 slave offline: reads can be directed to master
    - 1 master offline: slave prompted to master (can have problem)

## 10,000 users (Cache, CDN)
- improve load/response time
- considerations: 
    - 1. lifetime (too long: stale, too short: frequent fetch)
    - 2. consistency;
    - 3. mitigating failure (multi-cache server)
    - 4. evicting data (LRU)
- CDN:
    - geographically dispersed servers
    - static content (images, videos, css, javascripts)
    - dynamic content (check [5] [6])
    - 1. DNS routes the request to the closest CDN server
    - 2. CDN doesn't have it, go to origin (web server, or Amazon S3)
    - 3. origin returns data to CDN, (with TTL)
    - 4. CDN caches the file, returns to User A;

## 100,000 users (stateless)
    stateful (add sticky session in load balancer, make adding/removing servers much harder)
    stateless (move session state out of web tier, add to data-store)
    prefer choosing NoSQL

## 500,000 users (multiple data-centers)
    geoDNS: resolve DNS according to the location of a user
    case study (Netflix) to solve data synchronization [8]

## 1,000,000 users (message queue)
    Message-Queue: producer-consumer, (1 queue for photo, 1 queue for pdf)
    logging, metrics and automation

## 5,000,000 users (sharding)
    sharding [11,12]
    problems: hard to join across databases
    most important factor: sharding key
    resharding data (consistency hash)
    moving things to NoSQL

