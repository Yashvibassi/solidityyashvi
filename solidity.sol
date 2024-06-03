// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract YashviToken {

    // Public variables to store details about the token
    string public tokenName = "YashviToken";
    string public tokenSymbol = "YT";
    uint256 public totalSupply = 0;

    // Mapping of addresses to balances
    mapping(address => uint256) public balances;

    // Mint function to increase total supply and the balance of the specified address
    function mint(address to, uint256 value) external {
        totalSupply += value;
        balances[to] += value;
    }

    // Burn function to decrease total supply and the balance of the caller's address
    function burn(uint256 value) external {
        require(balances[msg.sender] >= value, "Insufficient balance to burn");
        totalSupply -= value;
        balances[msg.sender] -= value;
    }
}
