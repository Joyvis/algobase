# 👆👆 141. Linked List Cycle

## 🧠 Intuition

To detect a cycle in a linked list, we use the **fast and slow pointers** technique (Floyd's Cycle Detection). The fast pointer advances 2 steps while the slow advances 1. If there's a cycle, they will eventually meet.

---

## ⚙️ Approach

1. Initialize two pointers: `slow` and `fast` at the head of the list
2. While `fast` and `fast.next` are not null:
   - Move `slow` one step
   - Move `fast` two steps
   - If `slow == fast`, there's a cycle
3. If we exit the loop, there's no cycle

---

## ⏱️ Complexity

- **Time**: O(n) - At most two passes through the cycle
- **Space**: O(1) - Only two pointers

---

## 🧩 Solutions

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/141-linked-list-cycle/solution.rb)
- 📘 [TypeScript](https://github.com/Joyvis/algobase/blob/main/src/141-linked-list-cycle/solution.ts)

---

🔙 [Back to index](../../index.md)
