def fibo(n)
  n > 1 ? (return fibo(n-2)+fibo(n-1)) : (n == 0 ? (return 0) : (return 1))
end

