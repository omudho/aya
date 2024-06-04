
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract StructCRUD{

struct Item{
    string name;
    string age;
    uint256 id;
    bool verrification;
}

Item[] public items;
uint256 public nextID = 0;

function create(string memory _name, string memory _age) public {
    items.push(Item(_name, _age, nextID, true));
  nextID++;
}

}