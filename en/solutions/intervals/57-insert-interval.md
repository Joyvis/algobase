# 📐 57. Insert Interval

## 🧠 Intuition

We need to insert a new interval into an ordered list of non-overlapping intervals, merging when necessary. We divide into three parts: intervals before the new one, intervals that overlap (merge), and intervals after.

---

## ⚙️ Approach

1. Add all intervals that end before the new one starts
2. Merge all intervals that overlap with the new one:
   - Update start: `min(new.start, interval.start)`
   - Update end: `max(new.end, interval.end)`
3. Add the merged interval to the result
4. Add all remaining intervals

---

## ⏱️ Complexity

- **Time**: O(n) - Single pass through intervals
- **Space**: O(n) - Result list

---

## 🧩 Solutions

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/57-insert-interval/solution.rb)
- 📘 [TypeScript](https://github.com/Joyvis/algobase/blob/main/src/57-insert-interval/solution.ts)

---

🔙 [Back to index](../../index.md)
