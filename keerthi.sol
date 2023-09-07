// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract MyTokenKeerthi {

    // Public variables to store token details
    string public tokenName = "KEERTHI";
    string public tokenAbbrv = "KEER";
    uint256 public totalSupply = 10000;

    // Mapping of addresses to balances
    mapping(address => uint256) public balance;

    // Mint function to increase total supply and sender's balance
    function mint(address mintAddress, uint256 mintValue) public {
        totalSupply += mintValue;
        balance[mintAddress] += mintValue;
    }

    // Burn function to decrease total supply and sender's balance
    function burn(address burnAddress, uint256 burnValue) public {
        require(balance[burnAddress] >= burnValue, "Insufficient balance to burn");
        
        totalSupply -= burnValue;
        balance[burnAddress] -= burnValue;
    }
}
