# 🌊 102. Binary Tree Level Order Traversal

## 🧠 Intuition

To traverse a tree **level by level** (from root to leaves), we need to visit all nodes at one level before moving to the next. This is exactly what **Breadth-First Search (BFS)** does, using a queue to process nodes in the correct order.

---

## ⚙️ Approach

1. Create a queue and add the root
2. While the queue is not empty:
   - Determine how many nodes are at the current level (queue size)
   - Process all these nodes, adding their values to a level list
   - Add each node's children to the queue
3. Add the level list to the final result
4. Return the list of lists with all levels

---

## ⏱️ Complexity

- **Time**: O(n) - We visit each node exactly once
- **Space**: O(n) - Queue can hold up to n/2 nodes in worst case (last level)

---

## 🧩 Solutions

- 📘 [TypeScript](https://github.com/Joyvis/algobase/blob/main/src/102-binary-tree-level-order-traversal/solution.ts)

---

🔙 [Back to index](../../index.md)
