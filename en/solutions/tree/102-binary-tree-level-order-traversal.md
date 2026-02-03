# 🌳 102. Binary Tree Level Order Traversal

## 🧠 Intuition

To traverse a tree **level by level**, we use BFS with a queue. We process all nodes at one level before moving to the next, grouping values from each level in a separate list.

---

## ⚙️ Approach

1. Create a queue and add the root
2. While queue is not empty:
   - Determine current level size
   - Process all nodes at this level
   - Add children to queue for next level
3. Return list of lists

---

## ⏱️ Complexity

- **Time**: O(n) - Visit each node once
- **Space**: O(n) - Queue and result

---

## 🧩 Solutions

- 📘 [TypeScript](https://github.com/Joyvis/algobase/blob/main/src/102-binary-tree-level-order-traversal/solution.ts)

---

🔙 [Back to index](../../index.md)
