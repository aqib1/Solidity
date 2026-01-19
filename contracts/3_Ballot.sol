// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract Inbox {
    string private message;

    constructor(string memory initialMessage) {
        message = initialMessage;
    }

    function setMessage(string memory newMessage) public {
        message = newMessage;
    }

    // view keywords specified that an operation is not modifing anything
    function getMessage() public view returns(string memory) {
        return message;
    }

    function doMath(int a, int b) public pure returns(int) {
        int result = 0;
        
        for (int i = 0; i < 10; i++) {
            result += (a + b) + i;
        }
        
        return result;
    }
}