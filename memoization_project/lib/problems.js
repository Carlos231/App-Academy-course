// Fibonacci memoized
//  Find n number from the fibonacci sequence
function fibMemo(n, memo = {}) {
    // if arg is in memo, fetch the val and return it
    if (n in memo) return memo[n];
    if (n === 1 || n === 2) return 1;

    // if the arg is not in the memo, calculate it recursively, but save it in the memo for future
    memo[n] = fibMemo(n - 1, memo) + fibMemo(n - 2, memo);
    return memo[n];
}

// console.log(fibMemo(1));
// console.log(fibMemo(6));
// console.log(fibMemo(50));

// Write a function, lucasNumberMemo(n), that takes in a number.
// The function should return the n-th number of the Lucas Sequence.
// The 0-th number of the Lucas Sequence is 2.
// The 1-st number of the Lucas Sequence is 1
// To generate the next number of the sequence, we add up the previous two numbers.
//
// For example, the sequence begins: 2, 1, 3, 4, 7, 11, ...
//
// Solve this recursively with memoization.
//
// Examples:
//
// console.log(lucasNumberMemo(0));  // => 2
// console.log(lucasNumberMemo(1));  // => 1
// console.log(lucasNumberMemo(40));  // => 228826127
// console.log(lucasNumberMemo(41));  // => 370248451
// console.log(lucasNumberMemo(42));  // => 599074578
function lucasNumberMemo(n, memo = {}) {
    if (n in memo) return memo[n];

    if (n === 0) return 2;
    if (n === 1) return 1;

    memo[n] = lucasNumberMemo(n - 2, memo) + lucasNumberMemo(n - 1, memo);
    return memo[n];
}


// Write a function, minChange(coins, amount), that accepts an array of coin values
// and a target amount as arguments. The method should return the minimum number of coins needed
// to make the target amount. A coin value can be used multiple times.
//
// After you pass the first 3 examples, you'll likely need to memoize your code 
// in order to pass the 4th example in a decent runtime.
//
// Examples:
//  
// console.log(minChange([1, 2, 5], 11));        // => 3, because 5 + 5 + 1 = 11
// console.log(minChange([1, 4, 5], 8));         // => 2, because 4 + 4 = 8
// console.log(minChange([1, 5, 10, 25], 15));    // => 2, because 10 + 5 = 15
// console.log(minChange([1, 5, 10, 25], 100));   // => 4, because 25 + 25 + 25 + 25 = 100
//  PRE MOMOIZATION VERSION
// function minChange(coins, amount, memo = {}) {
//     // base cases
//     if (amount === 0) return 0;

//     let numCoins = [];
//     // array of all the possible ways to give change
//     coins.forEach((coin) => {
//         // subtract coin from the amount to keep searching
//         // next target amount =  amount - count
//         if (coin <= amount) {
//             numCoins.push(minChange(coins, amount - coin) + 1); // +1 counts coin took at level
//         }
//     });

//     return Math.min(...numCoins); // spread operator so can use the min function
// }

function minChange(coins, amount, memo = {}) {
    // base cases
    if (amount in memo) return memo[amount]; // amount is key since the only thing that changes
    if (amount === 0) return 0;

    let numCoins = [];
    // array of all the possible ways to give change
    coins.forEach((coin) => {
        // subtract coin from the amount to keep searching
        // next target amount =  amount - count
        if (coin <= amount) {
            numCoins.push(minChange(coins, amount - coin, memo) + 1); // +1 counts coin took at level
        }
    });

    memo[amount] = Math.min(...numCoins); // spread operator so can use the min function

    return memo[amount];
}


module.exports = {
    fibMemo,
    lucasNumberMemo,
    minChange
};