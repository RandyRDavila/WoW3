# Conjecture NT.7: Radical Lower Bound for Hexagonal Numbers

**Statement**
If a positive integer \( n \) is a **hexagonal number**, then

$$
\operatorname{rad}(n) \geq 2 \cdot \mathrm{pf}_{\max}(n),
$$

where:

- \( \operatorname{rad}(n) \) is the **radical** of \( n \), i.e., the product of the distinct prime divisors of \( n \),
- \( \mathrm{pf}_{\max}(n) \) is the **largest prime factor** of \( n \).

**Why It’s Worth Documenting**
This conjecture proposes a **nontrivial multiplicative lower bound** on the radical of \( n \) specifically for **hexagonal numbers**, a classical sequence defined by the formula:

$$
n = k(2k - 1) \quad \text{for some } k \in \mathbb{N}.
$$

While radicals and prime factors are central in multiplicative number theory, their relationship with **polygonal numbers** (which arise from additive formulas) is not immediately obvious.

That this conjecture connects an **additive combinatorial structure** (hexagonal number) to a **multiplicative arithmetic constraint** (a lower bound on the radical) is both surprising and elegant. It suggests that polygonal structure may enforce hidden rigidity in the factorization of integers—a promising path for further exploration.

**Defined Terms**

- **Hexagonal number**: \( n \) is hexagonal if \( n = k(2k - 1) \) for some integer \( k \geq 1 \).
- **Radical**: \( \operatorname{rad}(n) = \prod_{p \mid n} p \), the product of the distinct prime divisors of \( n \).
- **Largest prime factor**: \( \mathrm{pf}_{\max}(n) = \max \{ p : p \text{ is a prime and } p \mid n \} \).

**Classification**

- Type: Structural implication
- Domain: Number theory
- Hypothesis: `is_hexagonal == True`
- Inequality: \( \operatorname{rad}(n) \geq 2 \cdot \mathrm{pf}_{\max}(n) \)
