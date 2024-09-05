// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.8;

//types of variables - local, state, global

contract VariableTypes {

    // state variable - stored on the blockchain
    uint public myUint = 1; 

    // local variable exists only in the function
    function setLocalVar() external pure {
        uint myLocalInt = 1;
    }

    // global variable - can be accessed from any function
    function setGlobalVar () external view returns (address, uint, uint) {
        address sender = msg.sender;
        uint timeStamp = block.timestamp;
        uint blockNum = block.number;
        return (sender, timeStamp, blockNum);
    }
}

// constatnt variable helps us in saving gas cost
contract ConstantVar {
    address public constant myadd = 0x0000000000000000000000000000000000000000;
}