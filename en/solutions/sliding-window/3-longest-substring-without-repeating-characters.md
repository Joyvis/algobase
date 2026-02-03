# 🪟 3. Longest Substring Without Repeating Characters

## 🧠 Intuition

We want to find the longest substring **without repeating characters**. We use a **sliding window**: we expand the window by adding characters, and when we find a repetition, we contract the window until we remove the duplicate.

---

## ⚙️ Approach

1. Use a hash set to track characters in the current window
2. Use two pointers: `left` and `right`
3. Expand `right`:
   - If the character is not in the set, add it and update max size
   - If it's in the set, remove characters from `left` until the duplicate is removed
4. Return the maximum size found

---

## ⏱️ Complexity

- **Time**: O(n) - Each character is added and removed at most once
- **Space**: O(min(m, n)) - Where m is the alphabet size

---

## 🧩 Solutions

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/3-longest-substring-without-repeating-characters/solution.rb)
- 📘 [TypeScript](https://github.com/Joyvis/algobase/blob/main/src/3-longest-substring-without-repeating-characters/solution.ts)

---

🔙 [Back to index](../../index.md)
