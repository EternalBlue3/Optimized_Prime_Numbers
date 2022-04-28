from functools import cache

def Find_Primes_v1(amount):
    primes = [2,3]
    found = 2
    number = 3
    
    while found < amount:
        for x in primes:
            if number % x == 0:
                break
                
        else:
            primes.append(number)
            found += 1
            
        number += 2
        
    return primes

def Find_Primes_v2(int amount): 
    
    cdef int number, found, x
    cdef int primes[100000]
    amount = min(amount, 100000)
    
    found = 0
    number = 2
    while found < amount:
        for x in primes[:found]:
            if number % x == 0:
                break
                
        else:
            primes[found] = number
            found += 1
            
        number += 1
        
    return [p for p in primes[:found]]

@cache
def Find_Primes_v3(int amount): 
    
    cdef int number, found, x
    cdef int primes[100000]
    amount = min(amount, 100000)
    
    found = 0
    number = 2
    while found < amount:
        for x in primes[:found]:
            if number % x == 0:
                break
                
        else:
            primes[found] = number
            found += 1
            
        number += 1
        
    return [p for p in primes[:found]]

def Is_Prime(n) : 
    if (n <= 1) : 
        return False
    if (n <= 3) : 
        return True
    
    if (n % 2 == 0 or n % 3 == 0) : 
        return False
    
    i = 5
    while(i * i <= n) : 
        if (n % i == 0 or n % (i + 2) == 0) : 
            return False
        i = i + 6
    
    return True
