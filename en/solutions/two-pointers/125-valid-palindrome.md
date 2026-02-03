# 👆👆 125. Valid Palindrome

## 🧠 Intuition

A palindrome is a string that reads the same forwards and backwards. Using **two pointers** (one at the start, one at the end), we can compare characters symmetrically, ignoring non-alphanumeric characters and case differences.

---

## ⚙️ Approach

1. Use two pointers: `left = 0`, `right = length - 1`
2. While `left < right`:
   - Advance `left` while not alphanumeric
   - Move `right` back while not alphanumeric
   - Compare characters (ignoring case)
   - If different, return false
   - Move both pointers
3. If we reach the end, return true

---

## ⏱️ Complexity

- **Time**: O(n) - Single pass through the string
- **Space**: O(1) - Only pointers

---

## 🧩 Solutions

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/125-valid-palindrome/solution.rb)

---

🔙 [Back to index](../../index.md)
