# 🌲 110. Balanced Binary Tree

## 🧠 Intuition

A tree is **balanced** if, for every node, the height difference between its left and right subtrees is at most 1. We can verify this recursively, calculating the height of each subtree while checking for balance.

---

## ⚙️ Approach

1. Create a recursive function that returns the height of a subtree
2. If we find an imbalance, return -1 to propagate the error
3. For each node:
   - Calculate left subtree height
   - Calculate right subtree height
   - If difference > 1, return -1
   - Otherwise, return max(left, right) + 1
4. Tree is balanced if function doesn't return -1

---

## ⏱️ Complexity

- **Time**: O(n) - We visit each node once
- **Space**: O(h) - Recursion stack, where h is tree height

---

## 🧩 Solutions

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/110-balanced-binary-tree/solution.rb)
- 📘 [TypeScript](https://github.com/Joyvis/algobase/blob/main/src/110-balanced-binary-tree/solution.ts)

---

🔙 [Back to index](../../index.md)
