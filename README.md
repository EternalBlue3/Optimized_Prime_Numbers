# Optimized Prime Number Generation

I wanted to generate the first 20k prime numbers, however the base python language is known to be slow. I wrote a demonstration script to show how to use cython to improve the speed of your scripts.

Run "python3 setup.py build_ext --inplace" in the command prompt to cythonize your code.

Benchmarks (generate the first 20k primes):

    Vanilla Python (v1): 4.20827054977417 seconds

    Cython (v2): 0.668067455291748 seconds

    Cython with Cache (v3): 0.5617508888244629 seconds
