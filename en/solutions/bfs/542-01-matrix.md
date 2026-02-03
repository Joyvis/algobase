# 🌊 542. 01 Matrix

## 🧠 Intuition

We need to find the **distance to the nearest 0** for each cell. The key is realizing we can start from **all zeros simultaneously** and expand outward. This is a classic multi-source BFS.

---

## ⚙️ Approach

1. Create a distance matrix, initializing 0s with distance 0 and 1s with infinity
2. Add all cells with value 0 to the queue
3. For each cell in the queue, check its 4 neighbors:
   - If current distance + 1 is less than neighbor's distance, update it
   - Add the neighbor to the queue
4. Return the distance matrix

---

## ⏱️ Complexity

- **Time**: O(m * n) - We visit each cell at most once
- **Space**: O(m * n) - Distance matrix and queue

---

## 🧩 Solutions

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/542-01-matrix/solution.rb)
- 📘 [TypeScript](https://github.com/Joyvis/algobase/blob/main/src/542-01-matrix/solution.ts)

---

🔙 [Back to index](../../index.md)
