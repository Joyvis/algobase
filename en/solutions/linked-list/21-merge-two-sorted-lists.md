# 🔗 21. Merge Two Sorted Lists

## 🧠 Intuition

To merge two sorted lists, we compare elements from each list and always choose the smaller one. We use a **sentinel node** (dummy) to simplify building the resulting list.

---

## ⚙️ Approach

1. Create a sentinel node and a `current` pointer
2. While both lists have elements:
   - Compare the values of the current nodes
   - Connect the smaller one to `current`
   - Advance the pointer of the chosen list
   - Advance `current`
3. Connect the remaining non-empty list
4. Return `sentinel.next`

---

## ⏱️ Complexity

- **Time**: O(n + m) - We traverse both lists
- **Space**: O(1) - Only pointer rearrangement

---

## 🧩 Solutions

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/21-merge-two-sorted-lists/solution.rb)

---

🔙 [Back to index](../../index.md)
