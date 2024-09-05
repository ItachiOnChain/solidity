// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.8;

contract FunctionIntro{
    function add(uint x, uint y) external pure returns (uint256) {
        return x + y;
    }
    
    function sub(uint x, uint y) external pure returns (uint256) {
        return x - y;
    }
}