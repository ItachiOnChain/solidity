// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.8;

contract FunctionModifier {
    bool public paused;
    uint public count;

    function setPause(bool _paused) external {
        paused = _paused;
    }

    // function increment() external {
    //     require(!paused, "Contract is paused");
    //     count++;
    // }

    // function decrement() external {
    //     require(!paused, "Contract is paused");
    //     count--;
    // }

    // function modifier - reuse code before ad after the function

    modifier whenNotPaused() {
        require(!paused, "Contract is paused");
        _;
    }

    function increment() external whenNotPaused{
        count++;
    }

    function decrement() external whenNotPaused{
        count--;
    }

    modifier capped(uint _value) {
        require(_value <= 100, "Value is greater than 100");
        _;
    }

    function incBy(uint _value) external whenNotPaused capped(_value) {
        count += _value;
    }

    modifier sandwich(){
        count += 10; // first modifier will be executed
        _; // now the function will be executed
        count -= 10; // now again modifier will be executed
    }

    function foo() external sandwich {
        count += 10;
    }
}