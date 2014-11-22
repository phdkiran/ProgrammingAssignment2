## Find if the input matrix is cached. Return cached matrix if found in the getCache function. Otherwise 
## find inverse and store it using setCache and return matrix inverse

## 
## Find if the input matrix is cached. Return cached matrix if found in the getCache function. Otherwise 
## find inverse and store it using setCache and return matrix inverse

makeCacheMatrix <- function(x = matrix()) {
mat <- NULL
get <- function () x;
setCache <- function (cache) mat <<- cache;
getCache <- function () mat;
list(get=get, setCache=setCache, getCache=getCache)
}


## Find if the input matrix is cached. Return cached matrix if found in the getCache function. Otherwise 
## find inverse and store it using setCache and return matrix inverse

cacheSolve <- function(x=matrix(), ...) {
        ## Return a matrix that is the inverse of 'x'
  val <- x$getCache()
  if(!is.null(val)){
    print("Getting Cached matrix")
    val
  }
  val <- solve (x$get(), ...);
  x$setCache(val);
  val
}
