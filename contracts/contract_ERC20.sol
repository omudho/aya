// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;


contract ERC20 {
    string public name;
    string public symbol;

    mapping(address => uint256) public balanceOf;
    address public owner;

    uint256 public totalSupply;

    constructor(string memory _name, string memory _symbol) {
        name = _name;
        symbol = _symbol;

        owner = msg.sender;
    }

    function mint(address to, uint256 amount) public {
        require(msg.sender == owner, "only owner can create tokens");
        totalSupply += amount;
        balanceOf[owner] += amount;

    }

    function transfer(address to, uint256 amount) public {
        require(balanceOf[msg.sender] >= amount, "you aint rich enough");
        require(to != address(0), "cannot send to address(0)");
        balanceOf[msg.sender] -= amount;
        balanceOf[to] += amount;
    }
}

