---
title: "Conjecture GT.7"
status: open
---

---

## Statement

**Conjecture.** If $G$ is a connected, cubic, and diamond-free graph, then
$$
Z(G) \leq \gamma(G) + 2,
$$
with equality attained on **18** graphs in the known collection.

> **Status:** <span class="badge status-open">Open</span>

---

## Lean4 Theorem

```lean
theorem (G : SimpleGraph V)
  (h1 : connected G)
  (h2 : ∀ v, degree G v = 3)
  (h3 : ¬ ∃ H : SimpleGraph V, induced_subgraph H G ∧ is_diamond H) :
  zero_forcing_number G ≤ domination_number G + 2 :=
sorry
```

---

## Definitions

- A **cubic graph** is a graph in which every vertex has degree exactly 3.

- A **diamond** is the graph obtained by removing one edge from the complete graph $K_4$.

- A graph is **diamond-free** if it contains no induced subgraph isomorphic to a diamond.

- A **zero forcing set** of a graph $G$ is a set $B \subseteq V(G)$ of initially blue-colored vertices such that, under the *zero forcing color change rule*, all vertices of $G$ become blue. The rule allows a blue vertex with exactly one white neighbor to force that neighbor to become blue.

- The **zero forcing number** of a graph $G$, denoted $Z(G)$, is the minimum cardinality of a zero forcing set.

- A **dominating set** of a graph $G$ is a set $D \subseteq V(G)$ such that every vertex in $G$ is either in $D$ or adjacent to a vertex in $D$.

- The **domination number** of a graph $G$, denoted $\gamma(G)$, is the minimum cardinality of a dominating set.

---

## Equality Cases

Equality is observed on **18** graphs in the known dataset.

---
