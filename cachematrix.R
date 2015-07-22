## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix takes argument x, created its inverse and generates a list with the matrix and its inverse

makeCacheMatrix <- function(x = matrix()) {
        #inverse is calculated
        inv_x<<-solve(x)
        #list containing matrix and its inverse is generated
        list_mat_inv<<-list(matrix=x, inv=inv_x)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        # m is set to the inverse contained in the list 
        m<- list$inv
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        matrix <- list$matrix()
        m <- solve(data)
        }
