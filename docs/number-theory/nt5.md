# Conjecture NT.5 Collatz Time and Distinct Prime Divisors Implying Harshad Numbers

**Conjecture NT.5**
If

$$
\operatorname{collatz\_time}(n) < 3 \cdot \omega(n) + 1,
$$

then \( n \) is a **Harshad number**.

---

**Definitions.**

- \( \operatorname{collatz\_time}(n) \):
  The number of steps required to reach 1 under the **Collatz process**:

$$
  n \mapsto
  \begin{cases}
    n/2, & \text{if } n \equiv 0 \pmod{2} \\
    3n + 1, & \text{if } n \equiv 1 \pmod{2}
  \end{cases}
$$

The count does **not** include the terminal 1.

- \( \omega(n) \):
  The number of **distinct prime divisors** of \(n\).
  For example, \( \omega(18) = 2 \) because \( 18 = 2 \cdot 3^2 \).

- **Harshad number**:
  A positive integer divisible by the **sum of its digits**.
  That is, \( n \) is Harshad if \( n \bmod \sigma_{10}(n) = 0 \),
  where \( \sigma_{10}(n) \) is the digit sum of \(n\) in base 10.

---

### Why It's Interesting

This conjecture connects:

- The **speed** of decay in the Collatz orbit,
- To the **multiplicative structure** of \(n\) via prime factorization,
- And concludes a **digit-based arithmetic** property (Harshadness).

It hints that integers with **few prime factors and short Collatz paths** are highly likely to exhibit **divisibility by digit sum**—a surprising interplay between base-agnostic number theory and base-10 arithmetic.

---

### Status

- ✅ Verified for \( n \leq 10{,}000 \)
- ❓ Open
