# Consistent Hashing, Hash Table

## The Paper
-  http://www.tom-e-white.com/2007/11/consistent-hashing.html
Consistent hashing and random trees: Distributed caching protocols for relieving hot spots on the World Wide Web
ACM STOC 1997
	- used in Amazon Dynamo, memcached, Parameter Server

## Algorithm:
	- n machines, load balacing:
	- hash(O) % n
	- Clockwise -> Next One
	- Duplicate with multiple-object

## Another good article
- http://afghl.github.io/2016/07/04/consistent-hashing.html

## Distributed Hash Table (DHT)
- Another Good Article: http://www.cnblogs.com/hapjin/p/5760463.html
	- Chord Basic Lookup
	- If not in server, clockwise
	- Finger Table to improve performance

i   id+2^i    succ  
0   1+2^0=2    2  
1   1+2^1=3    6  
2   1+2^2=5    6  
id: 1 (server 1)  
item: id+2^i, should be looked up in the server (succ)

## Classic Example: Amazon Dynamo

https://en.wikipedia.org/wiki/Distributed_hash_table

## Bloom Filters
 Probabilistic: if a lot of independent bit agree, just accept it as true
