// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

import "src/Counter.sol";


contract TestCounter is Test {
    Counter c;

    function setUp() public {
        c = new Counter(5);
    }

    function testIncrement() public {
        c.increment();
        c.increment();
        assertEq(c.getNum(), 7, "ok");
    }

    function testDecrement() public{
        c.decrement();
        assertEq(c.getNum(), 4, "ok");
    }

}
