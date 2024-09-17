// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.8;

// Array - Dynamic or fixed size

contract Array {
    uint[] public nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    uint[5] public fixedNums = [1, 2, 3, 4, 5];

    function example() external {
        nums.push(11); // [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
        nums.pop(); // [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        uint x= nums[0]; // get 1
        fixedNums[0] = 100; // [100, 2, 3, 4, 5]
        delete nums[0]; // [0, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    }

    function createMemoryArray() external pure returns (uint[] memory) {
        // create a new array in memory
        uint[] memory a = new uint[](10); // you cant use push and pop here
        return a;
    }

    // removing elements from array
    uint[] public arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    function remove(uint _index) public {
        require(_index < nums.length, "Index out of bounds");

        for (uint i = 0; i < arr.length-1; i++) {
            arr[_index] = arr[_index+1];
        }
        arr.pop();
    }

    // more gas efficient way
    function remove2(uint _index) public {
        require(_index < nums.length, "Index out of bounds");
        arr[_index] = arr[arr.length-1];
        arr.pop();
    }
}