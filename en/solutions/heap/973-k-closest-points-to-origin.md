# ⛰️ 973. K Closest Points to Origin

## 🧠 Intuition

We need to find the K closest points to the origin. We can use a **max heap** of size K: we keep the K smallest elements seen so far. When the heap exceeds K elements, we remove the largest.

---

## ⚙️ Approach

1. Calculate the distance from each point to the origin (we can use squared distance to avoid square root)
2. Use a max heap of size K:
   - Add each point to the heap
   - If size exceeds K, remove the farthest point (top of max heap)
3. Return the K points in the heap

Alternative: use Quick Select for O(n) average.

---

## ⏱️ Complexity

- **Time**: O(n log K) - Each heap insertion/removal is O(log K)
- **Space**: O(K) - Heap with K elements

---

## 🧩 Solutions

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/973-k-closest-points-to-origin/solution.rb)
- 📘 [TypeScript](https://github.com/Joyvis/algobase/blob/main/src/973-k-closest-points-to-origin/solution.ts)

---

🔙 [Back to index](../../index.md)
