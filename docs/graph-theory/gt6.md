---
title: "Conjecture GT.6"
status: open
---


---

## Statement

**Conjecture.** If $G$ is a connected graph, then
$$
\gamma_t(G) \leq a(L(G)) + 1,
$$
with equality attained on **21** graphs in the known collection.

> **Status:** <span class="badge status-open">Open</span>

---

## Lean4 Theorem

```lean
theorem (G : SimpleGraph V)
  (h1 : connected G) :
  total_domination_number G ≤ annihilation_number (line_graph G) + 1 :=
sorry
```

## Definitions

- A **connected graph** is a graph in which there exists a path between every pair of vertices.

- A **total dominating set** of a graph $G$ is a set $D \subseteq V(G)$ such that every vertex in $G$ is adjacent to at least one vertex in $D$. The **total domination number**, denoted by $\gamma_t(G)$, is the minimum cardinality of such a set.

- The **line graph** of a graph $G$, denoted $L(G)$, is the graph whose vertices correspond to the edges of $G$, where two vertices in $L(G)$ are adjacent if their corresponding edges in $G$ share a common vertex.

- The **annihilation number** of a graph $G$, denoted $a(G)$, is an invariant defined from the degree sequence. Let $d_1 \leq d_2 \leq \dots \leq d_n$ be the degree sequence of $G$. Then

$$
a(G) = \max \left\{ k : \sum_{i=1}^k d_i \leq m \right\},
$$

where $m = |E(G)|$ is the number of edges in $G$. In this conjecture, we evaluate the annihilation number on the line graph $L(G)$.

## Equality Cases

Equality is achieved on **21** graphs in the current database.
