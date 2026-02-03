# 🌲 733. Flood Fill

## 🧠 Intuition

Flood fill is like using the "paint bucket" tool in an image editor: starting from an initial pixel, we paint all connected pixels of the same color with a new color. We use **DFS** to visit all adjacent pixels.

---

## ⚙️ Approach

1. Check if the initial color is already the new color (avoids infinite loop)
2. Use DFS starting from the initial pixel:
   - Paint the current pixel with the new color
   - Recursively visit the 4 neighbors (up, down, left, right)
   - Only visit neighbors that have the original color
3. Return the modified image

---

## ⏱️ Complexity

- **Time**: O(m * n) - We may visit each pixel once
- **Space**: O(m * n) - Recursion stack in worst case

---

## 🧩 Solutions

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/733-flood-fill/solution.rb)
- 📘 [TypeScript](https://github.com/Joyvis/algobase/blob/main/src/733-flood-fill/solution.ts)

---

🔙 [Back to index](../../index.md)
