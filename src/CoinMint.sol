// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract CoinMint is ERC20 {
    uint public number;

    constructor() ERC20("DHOP", "DP"){}

    function mint(address to, uint256 amount) public {
        _mint(to, amount);
    }
}