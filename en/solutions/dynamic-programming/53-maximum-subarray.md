# 📊 53. Maximum Subarray

## 🧠 Intuition

We want to find the **contiguous subarray with the largest sum**. The key insight is that while iterating through the array, if the accumulated sum so far is negative, it's better to start a new subarray from the current element. This is **Kadane's algorithm**.

---

## ⚙️ Approach

1. Initialize `current_sum` and `max_sum` with the first element
2. For each element starting from the second:
   - `current_sum = max(element, current_sum + element)`
   - `max_sum = max(max_sum, current_sum)`
3. Return `max_sum`

---

## ⏱️ Complexity

- **Time**: O(n) - Single pass through the array
- **Space**: O(1) - Only control variables

---

## 🧩 Solutions

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/53-maximum-subarray/solution.rb)
- 📘 [TypeScript](https://github.com/Joyvis/algobase/blob/main/src/53-maximum-subarray/solution.ts)

---

🔙 [Back to index](../../index.md)
