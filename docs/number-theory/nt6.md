# Conjecture NT.6 Collatz Time and Radical Ratio Implying Harshad Numbers

**Conjecture NT.6**
If

$$
\operatorname{collatz\_time}(n) < \frac{40}{7} \cdot r(n) + \frac{23}{7},
$$

then \( n \) is a **Harshad number**.

---

**Definitions.**

- \( \operatorname{collatz\_time}(n) \):  The number of steps required for the Collatz iteration to reach 1 (excluding the final 1). See:

$$
  n \mapsto
  \begin{cases}
    n/2, & \text{if } n \equiv 0 \pmod{2} \\
    3n + 1, & \text{if } n \equiv 1 \pmod{2}
  \end{cases}
$$

- \( r(n) \):
  The **radical ratio**, defined as:

$$
r(n) := \frac{\operatorname{rad}(n)}{n}
$$

where \( \operatorname{rad}(n) \) is the product of the **distinct prime divisors** of \(n\).  For example, \( \operatorname{rad}(18) = 2 \cdot 3 = 6 \), so \( r(18) = 6 / 18 = 1/3 \).

- **Harshad number**:
  An integer divisible by the sum of its decimal digits:

$$
  n \equiv 0 \pmod{\sigma_{10}(n)}
$$

This conjecture relates:

- The **rate of convergence** under the Collatz process,

- To a ratio involving **multiplicative structure** (via the radical),

- And concludes a **base-dependent** additive property (Harshadness).

The radical ratio \( r(n) \) measures how "squareful" or "entangled" a number is. A low \( r(n) \) means \(n\) has high powers of primes, suggesting structural regularity. The conjecture suggests that **such structure predicts digit-sum divisibility**—a non-obvious link across different number-theoretic domains.
