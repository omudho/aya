// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ERC20 {
    address public banker = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    mapping(address => uint256) public balances;

    function setSomeonesBalance(address owner, uint256 amount) public {
       //require(msg.sender == banker, 'Not the banker');
        if (msg.sender == banker) {
            balances[owner] = amount;
        }else{
            revert("This is not the banker");
        }
        // do nothing
    }

    function transfer(address receiver, uint256 amount) public {
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
    }
}
