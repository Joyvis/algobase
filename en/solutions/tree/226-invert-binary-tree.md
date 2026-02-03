# 🌳 226. Invert Binary Tree

## 🧠 Intuition

Inverting a tree means mirroring all nodes: swap left child with right recursively.

---

## ⚙️ Approach

1. If node is null, return
2. Swap left and right children
3. Recursively invert subtrees
4. Return inverted node

---

## ⏱️ Complexity

- **Time**: O(n) - Visit each node once
- **Space**: O(h) - Recursion stack

---

## 🧩 Solutions

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/226-invert-binary-tree/solution.rb)

---

🔙 [Back to index](../../index.md)
