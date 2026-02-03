# 📚 150. Evaluate Reverse Polish Notation

## 🧠 Intuition

Reverse Polish Notation (RPN) places operators **after** their operands. We can evaluate using a **stack**: push numbers, and when we encounter an operator, pop two numbers, apply the operation, and push the result.

---

## ⚙️ Approach

1. Create an empty stack
2. For each token:
   - If it's a number, push it
   - If it's an operator (+, -, *, /):
     - Pop two operands (second operand first)
     - Apply the operation
     - Push the result
3. The final value in the stack is the result

---

## ⏱️ Complexity

- **Time**: O(n) - We process each token once
- **Space**: O(n) - Stack can have up to n/2 elements

---

## 🧩 Solutions

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/150-evaluate-reverse-polish-notation/solution.rb)

---

🔙 [Back to index](../../index.md)
