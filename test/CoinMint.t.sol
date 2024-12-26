// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

import "src/CoinMint.sol";


contract TestCoinMint is Test {
    CoinMint c;

    function setUp() public {
        c = new CoinMint();
    }

    function testmint() public {
        console.log("Contract Address: %s", address(this));
        c.mint(address(this), 100);
        assertEq(c.balanceOf(address(this)), 100, "ok");

    }
}