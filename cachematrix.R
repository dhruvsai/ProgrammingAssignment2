## Functions used to find inverse of matrix using caching.
## Caching function for matrix arguement and returns a vector of getters and setters. 

makeCacheMatrix <- function(x = matrix()) {
  a<-NULL
  set<-function(y){
       x<<-y
       a<<-NULL
    }
    get<-function() x
    setinverse<-function(inverse) a<<-inverse
    getinverse<-function() a
    list(set = set,get = get,setinverse = setinverse,getinverse = getinverse)
  
}


## Calls function from makeCachematrix and returns an inverse matrix.

cacheSolve <- function(x, ...) {
        a<- x$getinverse()
if(!is.null(a)){
            message("getting cached data")
            return(a)
   }
data<-x$get()
a<-solve(data)%*%data
x$setinverse(a)
a

}
