---
title: "Conjecture GT.9"
status: open
---

## Energy Upper Bound via 3-Rainbow Domination

---

### Statement

**Conjecture.** If $G$ is a connected and bull-free graph, then
$$
E(G) \leq \frac{5}{2} \cdot \gamma_{r3}(G) + 1,
$$
with equality attained on **13** graphs in the known collection.

> **Status:** <span class="badge status-open">Open</span>

---

### Lean4 Theorem (Hypothetical)

```lean
theorem (G : SimpleGraph V)
  (h1 : connected G)
  (h2 : ¬ ∃ H : SimpleGraph V, induced_subgraph H G ∧ is_bull H) :
  energy G ≤ (5 / 2) * rainbow_domination_3 G + 1 :=
sorry
```

---

### Definitions

- A **bull** is the graph obtained by removing one edge from the complete graph $K_4$.

- A graph is **bull-free** if it contains no induced subgraph isomorphic to a bull.

- The **energy** of a graph $G$, denoted $E(G)$, is the sum of the absolute values of the eigenvalues of the adjacency matrix of $G$, rounded to the nearest integer:
  $$
  E(G) = \sum_{i=1}^n |\lambda_i|, \quad \text{rounded to nearest integer}
  $$
  where $\lambda_1, \dots, \lambda_n$ are the eigenvalues of $A(G)$.

- A **$k$-rainbow dominating function** of a graph $G$ is an assignment of a subset of colors from $\{1, \dots, k\}$ to each vertex such that any vertex assigned the empty set has all $k$ colors represented in its open neighborhood.

- The **$k$-rainbow domination number** of a graph $G$, denoted $\gamma_{rk}(G)$, is the minimum total number of assigned colors across all vertices under a $k$-rainbow dominating function.

- In this conjecture, we use the **3-rainbow domination number**, denoted $\gamma_{r3}(G)$.

---

### Equality Cases

Equality is achieved on **13** graphs in the known database.

---
