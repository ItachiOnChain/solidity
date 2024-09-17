// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.8;

// require, revert, assert
// gas will be refunded (you send 1000 gas, 100 is used so 900 will be refunded), state changes will not be reverted
// custom error => save gas

contract Error {
    function testRequire(uint _i) external {
        require(_i<=10, "i is greater than 10");
        // code will not be executed if require condition is not met
    }

    function testRevert(uint _i) external {
        if (_i > 10) {
            revert("i is greater than 10");
        }
        // code will not be executed if assert condition is not met
    }

    uint num =123;
    function testAssert() external {
        assert(num==123);
        // code will not be executed if assert condition is not met
    }

    //custom error
    error MyError(address caller, uint i);
    function testCustomError(uint _i) public view {
        if (_i > 10) {
            revert MyError(msg.sender, _i); //require statement cost more than custom error in throwing a error messege
        }
        // code will not be executed if assert condition is not met
    }

}