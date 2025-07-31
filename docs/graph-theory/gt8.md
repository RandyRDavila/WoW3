---
title: "Conjecture GT.8"
status: open
---

## Energy Lower Bound via Line Graph Domination

---

### Statement

**Conjecture.** If $G$ is a connected and $r$-regular graph with $r > 0$, then
$$
E(G) \geq 2 \left( n(G) - i(L(G)) \right),
$$
with equality attained on **17** graphs in the known collection.

> **Status:** <span class="badge status-open">Open</span>

---

### Lean4 Theorem (Hypothetical)

```lean
theorem (G : SimpleGraph V)
  (h1 : connected G)
  (h2 : ∀ v, degree G v = r ∧ r > 0) :
  energy G ≥ 2 * (order G - independent_domination_number (line_graph G)) :=
sorry
```

---

### Definitions

- A graph $G$ is **$r$-regular** if every vertex has degree $r$.

- A graph is **connected** if there is a path between every pair of vertices.

- The **energy** of a graph $G$, denoted $E(G)$, is the sum of the absolute values of the eigenvalues of the adjacency matrix of $G$, rounded to the nearest integer:
  $$
  E(G) = \sum_{i=1}^n |\lambda_i|, \quad \text{rounded to nearest integer}
  $$
  where $\lambda_1, \dots, \lambda_n$ are the eigenvalues of $A(G)$.

- The **order** of a graph $G$, denoted $n(G)$, is the number of vertices in $G$.

- The **line graph** $L(G)$ has a vertex for each edge of $G$; two vertices in $L(G)$ are adjacent if their corresponding edges in $G$ share a vertex.

- The **independent domination number** of a graph $H$, denoted $i(H)$, is the minimum size of an independent dominating set in $H$.

---

### Equality Cases

Equality holds on **17** graphs in the current database.

---
