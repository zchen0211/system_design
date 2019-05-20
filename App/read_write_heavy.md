# Read-Write Heavy App

## Read-Heavy
- https://www.mullie.eu/why-your-code-doesnt-scale/
- Read-heavy applications are usually easier to scale. Being read-heavy means there are plenty more requests that only need to fetch (and output) data, compared to those that store data.
- Read-heavy applications are mostly about being able to service requests. What you need here is enough machines to handle the load: enough application servers to do the computing and/or enough database slaves to read from (more on both later.)

## Write-Heavy
- Write-heavy applications will need even more careful planning. Not only will they likely have the read-problems as well, you’ll also need to be able to store the data somewhere. If there’s lots of it & continuously growing, it might outgrow your machine.
- MongoDB
- memory-storage engine for memcached portion
- NoSQL for write-heavy apps
	- Cassandra https://www.packtpub.com/mapt/book/big_data_and_business_intelligence/9781785285707/4/ch04lvl1sec28/write-heavy-pattern
