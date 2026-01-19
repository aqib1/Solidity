// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract Inbox {
    string public message;

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
}