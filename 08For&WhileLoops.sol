// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.8;

contract ForLoop {
    function checkEvenByForLoop(uint _num) external pure returns (string memory) {
        string memory result = "";
        for (uint i = 0; i < _num; i++) {
            if (i % 2 == 0) {
                result = "Even";
            } else if (i==4) {
                continue;
            } else if (i==10){
                break;
            } else {
                result = "Odd";
            }
        }
        return result;
    }

    function checkEvenByWhileLoop(uint _num) external pure returns (string memory) {
        string memory result = "";
        uint i = 0;
        while (i < _num) {
            if (i % 2 == 0) {
                result = "Even";
            } else if (i==4) {
                i++;
                continue;
            } else if (i==10){
                break;
            } else {
                result = "Odd";
            }
            i++;
        }
        return result;
    }
}