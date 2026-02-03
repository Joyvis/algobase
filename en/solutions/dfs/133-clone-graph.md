# 🌲 133. Clone Graph

## 🧠 Intuition

To clone a graph, we need to create copies of all nodes while maintaining the same connections. The challenge is avoiding duplicates when we encounter already-visited nodes. We use a **hash map** to map original nodes to their clones.

---

## ⚙️ Approach

1. Create a hash map to store already-cloned nodes
2. Use recursive DFS:
   - If node was already cloned, return the clone from hash map
   - Create a new clone node
   - Add to hash map
   - Recursively clone all neighbors
3. Return the clone of the initial node

---

## ⏱️ Complexity

- **Time**: O(V + E) - We visit each node and edge once
- **Space**: O(V) - Hash map with all nodes

---

## 🧩 Solutions

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/133-clone-graph/solution.rb)

---

🔙 [Back to index](../../index.md)
