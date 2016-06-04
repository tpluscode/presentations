### API Versions

1. In URI?
   ``` http
   GET http://movies.sample/v1.1/movie/96
   ```
1. Accept header?
   ``` http
   GET http://movies.sample/movie/96
   Accept: application/vnd.movies.sample.v1.1+json
   ```
1. Custom header?
   ``` http
   GET http://movies.sample/movie/96
   X-Version: 1.1
   ```

Note:

ad 1. is deceptively simple, but are different version same resource?

ad 2. is this symmetrical, ie. Accept and Content-Type? Does entire API update at once or is it part v2 and part v3?

ad 3. similar to above and custom headers possibly ignored by proxies

yet it possible to avoid versioning mostly
