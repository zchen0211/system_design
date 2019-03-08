# Design a system that can handle hourly backups for mobile phones

- Question Description:

You are in charge of designing a system that can handle regular backups for mobile devices. For the purposes of this problem, you should assume that users are storing a relatively large amount of data, though a lot of this data is not changed between backups. You should also assume that your users travel frequently, and your system should be able to deal with users moving between regions

- Solution:

The problem is fairly open ended, but you should be able to touch on a few key points here. First, since sending data over cellular networks is expensive and slow, some form of deduplication should be used to reduce the amount of data that needs to be sent over the network and stored on your servers. Second, you should discuss how you would handle users who travel between regions. Will you send all of their data to their "home server", or use some sort of consistency protocol to maintain a global set of backups? Do you need strong consistency here, or can your system handle some amount of inconsistency? You should discuss read/write trade-offs here too. Users will not need to restore a backup very often, so sacrificing read performance is probably a reasonable design choice.
