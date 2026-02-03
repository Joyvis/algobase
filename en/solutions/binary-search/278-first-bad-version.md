# 🔍 278. First Bad Version

## 🧠 Intuition

Imagine a production line where, from a certain point, all versions are defective. We need to find the **first bad version** efficiently. Since versions are ordered and all after the first bad one are also bad, we can use **binary search**.

---

## ⚙️ Approach

1. Define two pointers: `left = 1` and `right = n`
2. Calculate mid: `mid = (left + right) / 2`
3. Check if mid version is bad:
   - If bad, the first bad version is at mid or before: `right = mid`
   - If not bad, the first bad version is after: `left = mid + 1`
4. When `left == right`, we found the first bad version

---

## ⏱️ Complexity

- **Time**: O(log n) - We halve the search space each iteration
- **Space**: O(1) - Only control variables

---

## 🧩 Solutions

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/278-first-bad-version/solution.rb)
- 📘 [TypeScript](https://github.com/Joyvis/algobase/blob/main/src/278-first-bad-version/solution.ts)

---

🔙 [Back to index](../../index.md)
