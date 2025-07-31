---
title: "Conjecture GT.1"
status: open
---


---

## Statement

**Conjecture.** If $G$ is a connected graph, then
$$
\alpha(G) \geq \frac{r(G) + a(G)}{\Delta(G)},
$$
and this bound is sharp.

> **Status:** <span class="badge status-open">Open</span>

---

## Lean4 Theorem

```lean
theorem (G : SimpleGraph V)
  (h1 : connected G) :
  independence_number G ≥ ((residue G + annihilation_number G) / max_degree G) :=
sorry
```

---

## Definitions

Let $G$ be a finite, simple, undirected graph with vertex degrees arranged in nonincreasing order $d_1 \geq d_2 \geq \dots \geq d_n$, where $n = |V(G)|$ and $m = |E(G)|$.

- The **annihilation number** of $G$, denoted $a(G)$, is defined by

$$ a(G) = \max\left\{j : d_{n-j+1} + d_{n-j+2} + \dots + d_n \leq m\right\} $$

- The *Havel--Hakimi process* entails repeatedly sorting a given integer sequence in decreasing order, removing the largest element $a_1$, and subtracting 1 from the next $a_1$ elements. The **residue** of $G$, denoted $R(G)$, is defined as the number of zeros in the final sequence produced by the iterative application of the Havel--Hakimi process when starting from the degree sequence of $G$.

- The **maximum degree** of $G$, denoted $\Delta(G)$, is the maximum vertex degree in $G$.

---

## Commentary

Originally introduced by Pepper[^pepper1][^pepper2], the annihilation number provides a computable upper bound for the \emph{independence number} $\alpha(G)$; that is, $\alpha(G) \leq a(G)$, and belongs to a broader family of degree-sequence invariants that seek structural insight through optimizations over vertex degrees~\citep{CaPe}. Fajtlowicz, using his automated conjecturing program \texttt{Graffiti}~\citep{Fajtlowicz-IV-1990, GraffitiD}, announced the conjecture $\alpha(G) \geq R(G)$, a statement later proven in~\citep{Favaron1991}, and by Favaron, Mahéo, and Saclé~\citep{Favaron1991}, and independently in~\citep{Griggs1999, Triesch1996} by Griggs and Kleitman~\citep{Griggs1999}, and by Triesch~\citep{Triesch1996}.

If $G$ is regular and bipartite, then $\frac{a(G) + R(G)}{\Delta(G)} < \frac{n}{2}$, whenever $\Delta(G)\geq2$. Moreover, $\alpha(G) \geq \frac{n}{2}$, since $G$ is bipartite. Thus, Conjecture GT.1 holds for regular bipartite graphs. Next, recall that every \emph{König-Egerváry graph} $G$ of order $n$ satisfies $\alpha(G) + \mu(G) = n$.  Furthermore, for cubic graphs $G$ of order $n$, where $n$ is a multiple of four, it is true that $\alpha(G) \geq \frac{n}{4}$, while $a(G) = \frac{n}{2}$, $R(G) = \frac{n}{4}$, and $\Delta = 3$. Thus, Conjecture GT.1 also holds for cubic König-Egerváry graphs.

<!-- <p align="center">
  <img src="/assets/gt1-example.svg" width="600">
  <br>
  <em>Figure 1. A plot of the bound in Conjecture GT.1 on the database of graphs used by TxGraffiti.</em>
</p> -->

### Equality Cases

## References

[^pepper1]: R. Pepper. Bounding the independence number of a graph using its annihilation number. *Bull. Inst. Combin. Appl.*, 41:89–94, 2004.

[^pepper2]: R. Pepper. On the annihilation number of a graph. In Proceedings of the 15th American Conference on Applied Mathematics (ACAM), volume 1, pages 217–220. WSEAS, 2009.
