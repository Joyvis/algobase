# 🗺️ 1. Two Sum

## 🧠 Intuition

To find two numbers that add up to the target, we can use a **hash map** to store the numbers we've already seen. For each number, we check if its complement (target - number) already exists in the hash.

---

## ⚙️ Approach

1. Create an empty hash map
2. For each number in the array:
   - Calculate the complement: `target - number`
   - If the complement exists in the hash, return both indices
   - Otherwise, add the current number to the hash with its index
3. If no pair is found, return empty

---

## ⏱️ Complexity

- **Time**: O(n) - Single pass through the array
- **Space**: O(n) - Hash map with up to n elements

---

## 🧩 Solutions

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/1-two-sum/solution.rb)

---

🔙 [Back to index](../../index.md)
