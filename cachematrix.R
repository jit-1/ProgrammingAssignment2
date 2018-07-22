## The following function cache the matrix inverse

## caches matrix

makeCacheMatrix <- function(x = matrix()) {
    inverse_mat= NULL
    
    #set Function
    set <- function(matrix){
        mat<<- matrix
        inverse_mat = NULL
    }
    
    #get Function
    get<- function() mat #return matrix
    
    #set matrix inverse
    inverse_set <- function(inverse){
        inverse_mat <<- inverse
    }
    
    #get matrix inverse
    inverse_get <- function() inverse_mat

}


## computes inverse if not cached, uses cache otherwise

cacheSolve <- function(x, ...) {
        
    #return inverse
    mat <- x$inverse_get()
    
    #if inverse is set
    if( !is.null(mat) ) {
        message("getting cached data")
        return(mat)
    }
    
    #get matrix
    data <- x$get()
    
    #matrix multiply
    mat <- solve(data) %*% data
    
    #set inverse
    x$inverse_set(m)
    
    #return matrix
    mat
}
