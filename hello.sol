// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.10;

contract HelloWorld {
    string public hello = 'Hello ';
    string public name;

    constructor(string memory setName){
        name = setName;
    }

    function createName(string memory _name) public {
        name = _name;
    }

    function viewHello() public view returns(string memory){
        return string(abi.encodePacked(hello, name));
    }
}