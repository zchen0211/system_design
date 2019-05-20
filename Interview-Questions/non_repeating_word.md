# First non repeating word in a file? File size can be 100GB.

- Given a text file of size say 100GB? Task is to find first non repeating word in this file?
constraints: You can traverse the file only once.

- A distributed Master-worker node / Map-Reduce architecture

```
Algo:
we need to have one master node which will perform two main functions
1.Master node chunks the file to lets say 500 MB each and assign the chunk to a free worker node to parse it and return a Dictionary<string,int> ,The master node also maintains an indexing to keep track of which chunk is assigned to which worker node so that when it gets back all the results it needs to start figuring out what is the order in which it should process all the results as we need to find only the first non repeating string. Assuming that the whole 100GB file resides on the master node(needs to be confirmed with the interviewer and he most probably will say i will just give you a file handle residing one a single system), considering network constraints the master node just cant send all the chunks at the same time as it would just slow down the whole process, so it should start with lets say k=3 connections with the first 3 free workers and once the files are sent it can start with the next 3 chunks, this way we will also receive the results of the first k chunks back first;

2.once it receives the first k dictionaries, there are chances that the master node is still busy sending chunks to other workers over the network now we have to make a decision of doing merge operation on the master itself or over the worker nodes, as obviously there are plenty of chunks to send over and sending these chunks is mostly a network operation , we can use the master to merge the results on a separate thread keeping in mind the order of indexing operation earlier discussed. This way after all the workers have finished parsing there respective tasks we will have a single dictionary.

The merge operation will take two dictionaries and run one against the other keeping only for the single string entries and removing any string with count more than 1 to save space on the master. this operation should be done while preserving the order of the strings giving preference to the dictionary with lower worker id: the operation will look something like this : Dictionary<string,int> Merge(Dictionary<string,int> dict1, Dictionary<string,int> dict2);
Considering the worst case of the file , if almost all of the words are unique, we can perform optimization in the merge operation to omit few dictionaries.

Coming to the end we need to decide the number of worker nodes needed , we will not need a lot of worker nodes as network is a constraint we need to decide that based on how much time a single worker needs to process one single chunk and given network latency of the system we can easily calculate what should be the optimal chunk size and number of worker nodes n and also k.
```
