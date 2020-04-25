
# iterative fibonacci
fib_iter <- function(a, b, count) {
    if (count == 0) return(b)
    return(fib_iter( (a+b),  a,  (count-1)) )
}

fib <- function(n) {
    return(fib_iter(1, 0, n)) 
}

print(fib(8)) 
# >21
sapply(6:10, fib)
# > 8 13 21 34 55

# extremely fast for large numbers
fib(100)
# > 3.542248e+20