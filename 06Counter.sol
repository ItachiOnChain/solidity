// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.8;

contract Counter {
    uint public count;

    function inc() external {
        count+=1;
    }

    function dec() external {
        count-=1;
    }
}