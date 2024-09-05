// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.8;

contract VeiwAndPureFunc {
    
    uint public num;

    function ViewFunc (uint x) external view returns (uint){
        return num + x;
    }

    function PureFunct (uint x, uint y) external pure returns (uint){
        return x + y;
    }
}