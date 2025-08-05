# Conjecture ST.8 — Nonzero Density Controls Hodge Imbalance

**Statement.**
If a Calabi–Yau threefold is a valid manifold, then

$$
h^{1,1} - h^{2,1} \geq \frac{1}{2} \cdot \sum_{i=1}^{m} \sum_{j=1}^{n} \delta(c_{ij}) - 9,
$$

and this bound is sharp.

> **Status:** <span class="badge status-open">Open</span>

**Definitions.**

- \( h_{\text{diff}} = h^{1,1} - h^{2,1} \): The Hodge number difference.
- `num_nonzero`: Let \( C = [c_{ij}] \in \mathbb{Z}^{m \times n} \) denote the configuration matrix of a Calabi–Yau threefold, where each entry \( c_{ij} \) is a non-negative integer.

Then:

$$
\texttt{num\_nonzero} = \sum_{i=1}^{m} \sum_{j=1}^{n} \delta(c_{ij})
$$

where

$$
\delta(c_{ij}) =
\begin{cases}
1 & \text{if } c_{ij} \ne 0 \\\\
0 & \text{if } c_{ij} = 0
\end{cases}
$$

This quantity counts the total number of nonzero entries in the configuration matrix.

- `manifold`: True if the configuration corresponds to a valid Calabi–Yau threefold.

**Interpretation.**
This inequality suggests that configurations with more nonzero entries (denser polynomials) enforce greater Hodge asymmetry, hinting at a geometric cost for embedding complexity.

**Discovered by:** *TxGraffiti (Vibrations mode)*
