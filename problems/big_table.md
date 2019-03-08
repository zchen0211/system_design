# Design BigTable

## Bigtable: A Distributed Storage System for Structured Data.
- Bigtable is a distributed storage system for managing structured data that is designed to scale to a very large size: petabytes of data across thousands of commodity servers. Many projects at Google store data in Bigtable, including web indexing, Google Earth, and Google Finance.

## Features
- 1.Bigtable maintains data in lexicographic order by row key.

- 2.The Bigtable API provides functions for creating and deleting tables and column families. It also provides functions for changing cluster, table, and column family metadata, such as access control rights.

- 3.A BigTable cluster typically operates in a shared pool of machines that run a wide variety of other distributed applications, and Bigtable processes often share the same machines with processes from other applications.

- 4.The Bigtable has three major components: a library that is linked into every client, one master server, and many tablet servers.

- 5.Tablet servers can be dynamically added (or removed)from a cluster to accommodate changes in workloads.

- 6.The master is responsible for detecting the addition and expiration of tablet servers, balancing server load. In addition, it handles schema changes such as table and column creations.

- 7.The tablet server handles read and write requests that it has loaded.
