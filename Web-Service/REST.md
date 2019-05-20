# REST (representational state transfer)

- http://www.cnblogs.com/GISerYang/archive/2012/06/01/HTTP.html
- URL(Uniform Resource Locator) 
```
schema://host[:port#]/path/.../[;url-params][?query-string][#anchor]
```
- schema: protocol to be used in low-level (http, https, ftp)
- host: IP address
- port#: 80 as default (can be ignored), otherwise should be included: http://www.cnblogs.com:8080/
path
- url-params
- query-string: data sent to http server
- **Stateless**
	- Http Server doesn't know two requests come from the same client
	- Cookie introduced to solve
- RESTful API
	- Representational state transfer
