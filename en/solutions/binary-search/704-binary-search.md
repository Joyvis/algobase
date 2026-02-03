# 🔍 704. Binary Search

## 🧠 Intuition

When searching for a value in a **sorted array**, the most natural approach is to check each element one by one (linear search). But since the data is sorted, we can use a much more efficient method: **divide and conquer**.

The key insight: why not go directly to the middle of the array and check if the value is there, or whether we should search only in one half?

---

## ⚙️ Approach

We use the **binary search** technique:

1. Define two pointers: `left` and `right`, marking the start and end of the array
2. Calculate the middle index: `mid = (left + right) / 2`
3. Check if the middle value equals the `target`:
   - If yes, return the index
   - If the value is less than `target`, ignore the left half (`left = mid + 1`)
   - If greater, ignore the right half (`right = mid - 1`)
4. Repeat until we find the value or the pointers cross (return `-1`)

---

## ⏱️ Complexity

- **Time**: O(log n) - We halve the search space each iteration
- **Space**: O(1) - Only control variables

---

## 🧩 Solutions

- 🐍 [Python](https://github.com/Joyvis/algobase/blob/main/src/704-binary-search/solution.py)
- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/704-binary-search/solution.rb)

---

🔙 [Back to index](../../index.md)
