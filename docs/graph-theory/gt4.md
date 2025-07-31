---
title: "Conjecture GT.4"
status: open
---

---

## Statement

**Conjecture.** If $G$ is a non-trivial graph, then
$$
\mu^*(G) \leq H(G),
$$
and this bound is sharp.

> **Status:** <span class="badge status-open">Open</span>

---

## Lean4 Theorem

```lean
theorem (G : SimpleGraph V)
  (h1 : connected G) :
  min_maximal_matching_number G <= harmonic_index G :=
sorry
```

## Definitions

- The **harmonic index** $H(G)$ of a graph is defined as
  $$
  H(G) = \sum_{\{u, v\} \in E(G)} \frac{2}{d(u) + d(v)}.
  $$

- A **maximal matching** in a graph $G$ is a matching that cannot be extended by adding any additional edge. The **minimum cardinality** over all maximal matchings is denoted by $\mu^*(G)$, also known as the **saturation number**[^tavakoli2022].

- The **line graph** $L(G)$ of a graph $G$ has a vertex for each edge of $G$, and an edge between two vertices in $L(G)$ whenever their corresponding edges in $G$ share a vertex.

- The **independent domination number** $i(G)$ of a graph is the size of a smallest independent set that dominates the graph. It satisfies the identity
  $$
  \mu^*(G) = i(L(G)).
  $$

## Commentary

The **harmonic index** $H(G)$ was introduced by Fajtlowicz in 1987 through the original *Graffiti* system[^fajt], and later found independent relevance in chemical graph theory, where it correlates with molecular branching and $\pi$-electron energy of benzenoid hydrocarbons[^ilic2013]. The harmonic index is a degree-sensitive topological index, it belongs to a broader family of invariants with continuous behavior, often studied in extremal settings on graphs of fixed order or degree sum[^du2013]. Despite this analytic and chemical significance, few known results link the harmonic index to saturation-based or combinatorial matching parameters. Notably, one of the few bounds known on $\mu^*(G)$ was originally conjectured by the  \texttt{Graffiti.pc} system~\citep{Peppergraffiti.pc}.

## References

[^fajt]: S. Fajtlowicz, *On Conjectures of Graffiti*, Discrete Mathematics, 1987.
