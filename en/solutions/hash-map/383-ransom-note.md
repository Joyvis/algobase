# 🗺️ 383. Ransom Note

## 🧠 Intuition

We need to check if we can construct a ransom note using letters from a magazine. Each magazine letter can only be used once. We use a **hash map** to count the available letters in the magazine.

---

## ⚙️ Approach

1. Count the frequency of each letter in the magazine
2. For each letter in the ransom note:
   - Check if the letter exists in the magazine with count > 0
   - If it doesn't exist or count is 0, return false
   - Decrement the letter count
3. If all letters are found, return true

---

## ⏱️ Complexity

- **Time**: O(m + n) - Where m and n are the string lengths
- **Space**: O(1) - Hash map with at most 26 letters

---

## 🧩 Solutions

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/383-ransom-note/solution.rb)
- 📘 [TypeScript](https://github.com/Joyvis/algobase/blob/main/src/383-ransom-note/solution.ts)

---

🔙 [Back to index](../../index.md)
