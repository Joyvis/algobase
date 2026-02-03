# 🌲 226. Invert Binary Tree

## 🧠 Intuition

Inverting a binary tree means **mirroring** all nodes: the left child becomes the right and vice versa. We can do this recursively, inverting each subtree.

---

## ⚙️ Approach

1. If node is null, return null
2. Swap the left and right children of the current node
3. Recursively invert the left subtree
4. Recursively invert the right subtree
5. Return the node (now inverted)

---

## ⏱️ Complexity

- **Time**: O(n) - We visit each node once
- **Space**: O(h) - Recursion stack, where h is tree height

---

## 🧩 Solutions

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/226-invert-binary-tree/solution.rb)

---

🔙 [Back to index](../../index.md)
