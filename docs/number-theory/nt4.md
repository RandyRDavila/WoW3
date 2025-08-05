# Collatz Time Lower Bound for Prime Powers

**Statement.**
"If \( n \) is a power of a prime, then

$$
\mathrm{collatz\_time}(n) \geq \omega(n),
$$

and this bound is sharp.

**Description.**
This conjecture connects the multiplicative structure of integers to the additive dynamics of the Collatz map. Here,

- \( \omega(n) \) denotes the number of **total prime factors** of \( n \), counted with multiplicity. "

-The Collatz time of a number is the number of iterations required to reach 1 under the Collatz function.

For powers of primes (i.e., numbers of the form \( p^k \)), the number of prime factors is simply \( k \), and this conjecture proposes a minimal trajectory length through the Collatz orbit. If true, this would reveal that even for highly structured integers, Collatz dynamics exhibit a predictable lower bound.
