// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.8;

contract Constructor {
    mapping(address => uint) public balances;
    mapping(address => mapping(address => bool)) public isFriend;

    function example() external {
        balances[msg.sender] = 123;
        
    }
}