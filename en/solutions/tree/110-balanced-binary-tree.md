# 🌳 110. Balanced Binary Tree

## 🧠 Intuition

A balanced tree has height difference between subtrees of at most 1 for each node. We verify recursively, calculating height and balance simultaneously.

---

## ⚙️ Approach

1. Recursive function returns height or -1 if unbalanced
2. For each node, check both subtrees
3. If difference > 1, propagate -1
4. Otherwise, return max(left, right) + 1

---

## ⏱️ Complexity

- **Time**: O(n) - Visit each node once
- **Space**: O(h) - Recursion stack

---

## 🧩 Solutions

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/110-balanced-binary-tree/solution.rb)
- 📘 [TypeScript](https://github.com/Joyvis/algobase/blob/main/src/110-balanced-binary-tree/solution.ts)

---

🔙 [Back to index](../../index.md)
