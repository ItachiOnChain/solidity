// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.8;

contract Constructor {
    uint public x;
    address public owner;

    constructor(uint _x) {
        x = _x;
        owner = msg.sender;
    }

    // unlike function, constructor can only be executed once
}
