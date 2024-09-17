// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.8;

// function in soldity can Return multiple outputs
// those output can be named
// if you want to use the outputs in another function then we use Destructuring assignment

contract FunctionOutput {

    function returnMany() public pure returns (uint, bool) {
        return (1, true); 
    }

    function named() public pure returns (uint x, bool b) {
        return (1, true); 
    }

    function assigned() public pure returns (uint x, bool b) {
        x = 1;
        b = true; 
    }

    function destructuringAssignment() public pure {
        (uint x, bool b) = returnMany();
        (, bool c) = returnMany();
    }
}