# 🌳 235. Lowest Common Ancestor of BST

## 🧠 Intuition

In a BST, the LCA is the first node where paths to p and q diverge. We use the ordering property to navigate efficiently.

---

## ⚙️ Approach

1. If both smaller, go left
2. If both larger, go right
3. Otherwise, we found the LCA

---

## ⏱️ Complexity

- **Time**: O(h) - Tree height
- **Space**: O(1) iterative or O(h) recursive

---

## 🧩 Solutions

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/235-lowest-common-ancestor-of-a-binary-search-tree/solution.rb)
- 📘 [TypeScript](https://github.com/Joyvis/algobase/blob/main/src/235-lowest-common-ancestor-of-a-binary-search-tree/solution.ts)

---

🔙 [Back to index](../../index.md)
