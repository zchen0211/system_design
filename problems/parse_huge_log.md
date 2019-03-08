# Parse huge log

- Given a log file with HTTP requests to a server. The log file is very huge 100 TB, you have to filter the requests which has 200 success status. How can we approach this question?

The log file has timestamp, request type and status. You can assume that it will look like the apache server log.

- There multiple ways of approaching this, depending on the scope of the problem and the assumptions.

The simplest one is to:

read the file line by line, without loading it into memory,
filter records that have status 200,
chunk those into some record size,
Optionally, stick these in a thread safe queue, and chunk on the thread that is reading from this queue,
Use/save the chunks for your needs.
The code for this is very straightforward and can be achieved by using standard libraries of say, Python, Rust etc.

I would love to see comparisons of performance to all the heavy duty solutions mentioned in this thread.
