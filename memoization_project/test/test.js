const util = require('./util');
const chai = require('chai');
const { expect } = chai;

const {
    fibMemo,
    lucasNumberMemo,
    minChange
} = require('../lib/problems');

const {
    change
} = require('../lib/leet_code_518');

describe('fibMemo(n)', () => {
    it('should calculate the n-th number of the fibonacci sequence', () => {
        util.catchStackOverflow(fibMemo, 10);

        expect(fibMemo(1)).to.equal(1);
        expect(fibMemo(6)).to.equal(8);
        expect(fibMemo(10)).to.equal(55);
    });

    context('when the input is large', () => {
        it('runtime should not grow exponentially', () => {
            util.catchStackOverflow(fibMemo, 10);

            expect(fibMemo(41)).to.equal(165580141);
            expect(fibMemo(50)).to.equal(12586269025);
            expect(fibMemo(60)).to.equal(1548008755920);
        });
    });
});

describe('lucasNumberMemo(n)', () => {
    it('should calculate the n-th number of the lucas sequence', () => {
        util.catchStackOverflow(lucasNumberMemo, 10);

        expect(lucasNumberMemo(0)).to.equal(2);
        expect(lucasNumberMemo(1)).to.equal(1);
        expect(lucasNumberMemo(5)).to.equal(11);
        expect(lucasNumberMemo(9)).to.equal(76);
    });

    it('should use memoization', () => {
        util.catchStackOverflow(lucasNumberMemo, 10);

        let memo = { 'key': 'value' };
        expect(lucasNumberMemo('key', memo)).to.equal('value');
    });

    context('when the input is large', () => {
        it('runtime should not grow exponentially', () => {
            util.catchStackOverflow(lucasNumberMemo, 10);

            expect(lucasNumberMemo(40)).to.equal(228826127);
            expect(lucasNumberMemo(41)).to.equal(370248451);
            expect(lucasNumberMemo(42)).to.equal(599074578);
        });
    });
});

describe('minChange(coins, amount)', () => {
    it('it should return the minimum number of coins needed to make the amount', () => {
        util.catchStackOverflow(minChange, [1, 2, 5], 11);

        expect(minChange([1, 2, 5], 11)).to.equal(3)
        expect(minChange([1, 4, 5], 8)).to.equal(2)
        expect(minChange([1, 5, 10, 25], 15)).to.equal(2)
        expect(minChange([1, 2, 5], 0)).to.equal(0)
        expect(minChange([83, 186, 408, 419], 6249)).to.equal(20)
    });

    context('when the input is large', () => {
        it('runtime should not grow exponentially', () => {
            util.catchStackOverflow(minChange, [1, 2, 5], 11);

            expect(minChange([1, 5, 10, 25], 100)).to.equal(4)
        });
    });
});

describe('Leet Code #518 - Coin Change 2', () => {
    // it('https://leetcode.com/problems/coin-change-2/');
    it('it should return the number of combinations that make up that amount.', () => {
        util.catchStackOverflow(change(5, [1, 2, 5]));

        expect(change(5, [1, 2, 5])).to.equal(4)
        expect(change(3, [2])).to.equal(0)
        expect(change(10, [10])).to.equal(1)
    });

    context('when the input is large', () => {
        it('runtime should not grow exponentially', () => {
            util.catchStackOverflow(change(500, [3, 5, 7, 8, 9, 10, 11]));

            expect(change(500, [3, 5, 7, 8, 9, 10, 11])).to.equal(35502874)
        });
    });
})