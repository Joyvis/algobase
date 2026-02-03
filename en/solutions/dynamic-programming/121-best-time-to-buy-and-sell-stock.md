# 📊 121. Best Time to Buy and Sell Stock

## 🧠 Intuition

To maximize profit, we need to **buy low and sell high**. As we iterate through prices, we keep track of the minimum price seen so far and calculate the potential profit at each day. The highest profit found is the answer.

---

## ⚙️ Approach

1. Initialize `min_price` with infinity and `max_profit` with 0
2. For each price:
   - Update `min_price` if current price is lower
   - Calculate potential profit: `price - min_price`
   - Update `max_profit` if potential profit is higher
3. Return `max_profit`

---

## ⏱️ Complexity

- **Time**: O(n) - Single pass through the array
- **Space**: O(1) - Only control variables

---

## 🧩 Solutions

- 🦀 [Ruby](https://github.com/Joyvis/algobase/blob/main/src/121-best-time-to-buy-and-sell-stock/solution.rb)
- 📘 [TypeScript](https://github.com/Joyvis/algobase/blob/main/src/121-best-time-to-buy-and-sell-stock/solution.ts)

---

🔙 [Back to index](../../index.md)
