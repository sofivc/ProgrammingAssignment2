## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# Esta función obtiene la matriz, le saca su inversa 
# y luego lo almacena en el cache.

# Retorna una lista que contiene funciones para: 
  ## 1. set the matrix (establecer la matriz)
  ## 2. get the matrix (obtener la matriz)
  ## 3. set the inverse (establecer la inverssa de una matriz)
  ## 4. get the inverse (obtener la inversa de una matriz)
# esta lista se utiliza como entrada para cacheSolve()

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolve<-function(solve)m<<-solve
  getsolve<-function() m
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

# Esto retorna la inversa de una matriz, y si ya esta
# calculada, lo devolverá del caché.


cachesolve <- function(x, ...) {
  m <- x$getsolve()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setsolve(m)
  m
}






