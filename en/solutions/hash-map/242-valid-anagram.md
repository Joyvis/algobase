# 🗺️ 242. Valid Anagram

## 🧠 Intuition

An anagram is a word formed by rearranging all the letters of another word. To check if two strings are anagrams, we can **count the frequency of each character** and compare the counts.

---

## ⚙️ Approach

1. If lengths are different, return false
2. Create a hash map to count frequencies
3. For the first string, increment counts
4. For the second string, decrement counts
5. Check if all counts are zero

Alternative: sort both strings and compare.

---

## ⏱️ Complexity

- **Time**: O(n) - Single pass through each string
- **Space**: O(1) - Hash map with at most 26 letters (fixed alphabet)

---

## 🧩 Solutions

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/242-valid-anagram/solution.rb)

---

🔙 [Back to index](../../index.md)
