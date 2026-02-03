# 📚 232. Implement Queue Using Stacks

## 🧠 Intuition

A queue is FIFO (first in, first out) while a stack is LIFO (last in, first out). We can simulate a queue using **two stacks**: one for input and one for output. When we need to dequeue, we transfer elements from the input stack to the output stack (reversing the order).

---

## ⚙️ Approach

1. Use two stacks: `input` and `output`
2. **Push**: add to the input stack
3. **Pop/Peek**:
   - If output stack is empty, transfer all elements from input to output
   - Return/remove from the top of the output stack
4. **Empty**: both stacks are empty

---

## ⏱️ Complexity

- **Time**: Push O(1), Pop/Peek amortized O(1)
- **Space**: O(n) - We store all elements in the stacks

---

## 🧩 Solutions

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/232-implement-queue-using-stacks/solution.rb)
- 📘 [TypeScript](https://github.com/Joyvis/algobase/blob/main/src/232-implement-queue-using-stacks/solution.ts)

---

🔙 [Back to index](../../index.md)
