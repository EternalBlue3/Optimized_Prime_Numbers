from Primes import *
import time

vanilla_x = time.time()
v1 = Find_Primes_v1(20000)
vanilla_y = time.time()
print(f"Version 1 took: {vanilla_y-vanilla_x}")

cython_x = time.time()
Find_Primes_v2(20000)
cython_y = time.time()
print(f"Version 2 took: {cython_y-cython_x}")

cython2_x = time.time()
Find_Primes_v3(20000)
cython2_y = time.time()
print(f"Version 3 took: {cython2_y-cython2_x}")
