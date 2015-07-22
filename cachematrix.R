## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix takes argument x (which is a matrix), creates its inverse and generates a list with the matrix and its inverse

makeCacheMatrix <- function(x = matrix()) {
        #inverse is calculated
        inv_x<<-solve(x)
        #list containing matrix and its inverse is generated
        list_mat_inv<<-list(matrix=x, inv=inv_x)
}


## cachesolve checks whether there is a cached inversed matrix in "m", if yes it returns m if not it  calculates the inverse and returns it


cacheSolve <- function(x, ...) {
        # checks if there the list "list_mat_inv" exists (which would contain the cached inversed matrix), if the list exists it returns the inverse contained in the list 
        if(exists("list_mat_inv")) {
                message("getting cached data")
                return(list_mat_inv[["inv"]])
        }
        else  #if the list does not exist the matrix is inversed and returned
        {
                return(solve(x))
        }
        
}
