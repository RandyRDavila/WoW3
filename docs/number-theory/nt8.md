# Conjecture NT.8 Radical Harshad Bound

**Statement**
If the radical of \( n \) satisfies the inequality

$$
\operatorname{rad}(n) < 36 \cdot \omega(n) - 66,
$$

then \( n \) is a **Harshad number** — that is, \( n \) is divisible by the sum of its digits.

**Definitions**

- \( \operatorname{rad}(n) \): The *radical* of \( n \), defined as the product of the **distinct** prime factors of \( n \).
  Example: \( \operatorname{rad}(60) = 2 \cdot 3 \cdot 5 = 30 \)
- \( \omega(n) \): The number of **distinct** prime divisors of \( n \).
  Example: \( \omega(60) = 3 \)
- A **Harshad number** is an integer \( n \) such that \( n \) is divisible by the sum of its digits.
  Example: \( 18 \) is Harshad because \( 1 + 8 = 9 \) and \( 18 \div 9 = 2 \)

**Why This Conjecture Is Interesting**

This inequality creates a bridge between:

- **Multiplicative number theory** (via \( \operatorname{rad}(n) \) and \( \omega(n) \)), and
- **Digital arithmetic** (via the Harshad condition).

It suggests that when a number has few distinct prime divisors and their product (radical) remains below a linear threshold, the number’s structure is “simple” enough to ensure it divides its digit sum.

This is surprising because Harshadness seems unrelated to prime factorization at first glance — making this conjecture a **non-obvious and elegant link** between two domains of arithmetic.
