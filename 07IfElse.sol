// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.8;

contract IfElse {
    function checkEvenByIfElse(uint _num) external pure returns (string memory) {
        if (_num % 2 == 0) {
            return "Even";
        } else {
            return "Odd";
        }
    }

    function checkEvenByTernary(uint _num) external pure returns (string memory) {
        return _num % 2 == 0 ? "Even" : "Odd";
    }
}