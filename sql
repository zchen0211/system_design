# A complete tutorial (Stanford Courses)
http://web.stanford.edu/class/cs145/

# http://blog.jobbole.com/100349/
A very detailed article

# Commonly techniques
 > B+ Tree Index: insert / delete (O(logn))
 > Hash Table:

# Cores:
 > Process Manager
 > Network Manager
 > File System Manager
 > Memory Manager
 > Security Manager
 > Client Manager

# Relational Database
RDMBS

# ACID
A Atomicity
C Consitency
I Isolation
D Durability

# http://webscalesql.org/
"We're Gonna Need A Bigger Database"
https://github.com/webscalesql/webscalesql-5.6

RDBMS
 highly structured
 SQL
 data and relation saved in tables
 data manipulates and defines languages
 strong consistency

NoSQL
 No declarative language
 No predifined mode
 K-V / column / row / text / image saving;
 eventual consistency
 non-structured, no predictable
 CAP theorem
 high-performance, availability and extensibility
 flexible, semi-structured

 no standarized
 limited lookup ability
 not very direct program

# 
Entities
Relationships
 A data model is a collecaon of concepts for describing data
 A schema is a descripaon of a paracular collecaon of data, using the given data model

# Transactions:
 transaction (TXN): reads/writes
 scheduling concurrent transactions: A set of TXNs is isolated if their effect is as if all were executed serially
 # Conflicts: 
   If Ti wants to write to an item x and Tj wants to read x, then Ti, Tj conflict. Solution via locking:
     only one winner gets the lock
     loser is blocked (waits) unal winner finishes
 # Ensuring Atomicity & Durability
