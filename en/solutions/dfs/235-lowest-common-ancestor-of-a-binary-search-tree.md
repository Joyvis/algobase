# 🌲 235. Lowest Common Ancestor of a Binary Search Tree

## 🧠 Intuition

In a BST, all smaller values are on the left and larger on the right. The **Lowest Common Ancestor (LCA)** of two nodes is the first node where the paths to p and q diverge. We can use this property to find the LCA without visiting all nodes.

---

## ⚙️ Approach

1. Start from the root
2. If both p and q are smaller than current node, go left
3. If both p and q are larger than current node, go right
4. Otherwise, current node is the LCA (paths diverge here)

---

## ⏱️ Complexity

- **Time**: O(h) - Where h is the height of the tree
- **Space**: O(1) - Iterative solution, or O(h) if recursive

---

## 🧩 Solutions

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/235-lowest-common-ancestor-of-a-binary-search-tree/solution.rb)
- 📘 [TypeScript](https://github.com/Joyvis/algobase/blob/main/src/235-lowest-common-ancestor-of-a-binary-search-tree/solution.ts)

---

🔙 [Back to index](../../index.md)
