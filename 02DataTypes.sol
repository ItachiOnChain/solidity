// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.8;

//Data Types - Value And Reference

contract DataTypes {
    bool public myBool = true; // (default value false)
    uint public myUint = 1; // uint = uint256 0 to 2^256-1 (default value 0)
    int public myInt = -1; // int = int256 -2^255 to 2^255-1 (default value 0)
    int public minInt = type(int).min; // -2^255
    int public maxInt = type(int).max; // 2^255-1
    address public myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; // (default value 0x0000000000000000000000000000000000000000)
    bytes32 public myBytes32 = "Hello World"; // (default value 0x0000000000000000000000000000000000000000000000000000000000000000)
    string public myString = "Hello World";
}