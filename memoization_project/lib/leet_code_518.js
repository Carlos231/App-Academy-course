// Work through this problem on https://leetcode.com/problems/coin-change-2/ and use the specs given there.
// Feel free to use this file for scratch work.

/*
    You are given an integer array coins representing coins of different denominations and an integer amount representing a total amount of money.

Return the number of combinations that make up that amount. If that amount of money cannot be made up by any combination of the coins, return -1.

You may assume that you have an infinite number of each kind of coin.

The answer is guaranteed to fit into a signed 32-bit integer.
*/

/**
 * @param {number} amount
 * @param {number[]} coins
 * @return {number}
 */

// WITHOUT MEMOIZATION
// var change = function (amount, coins) {
//     // how many ways can give back change? not zero
//     if (amount === 0) return 1;

//     // always get the last coin
//     let currCoin = coins[coins.length - 1];

//     let total = 0;
//     // dont want to reduce to negative
//     for (let qty = 0; qty * currCoin <= amount; qty++) {
//         // make sure dont use use the same coin again
//         total += change(amount - qty * currCoin, coins.slice(0, -1));
//     }

//     return total;
// };

var change = function (amount, coins, memo = {}) {
    let key = amount + '-' + coins;
    if (key in memo) return memo[key];
    // how many ways can give back change? not zero
    if (amount === 0) return 1;

    // always get the last coin
    let currCoin = coins[coins.length - 1];

    let total = 0;
    // dont want to reduce to negative
    for (let qty = 0; qty * currCoin <= amount; qty++) {
        // make sure dont use use the same coin again
        total += change(amount - qty * currCoin, coins.slice(0, -1), memo);
    }

    memo[key] = total;
    return memo[key];
};

console.log(change(5, [1, 2, 5])); // 4
console.log(change(3, [2])); // 0
console.log(change(10, [10])); // 1
console.log(change(500, [3, 5, 7, 8, 9, 10, 11])); // 35502874


module.exports = {
    change
};