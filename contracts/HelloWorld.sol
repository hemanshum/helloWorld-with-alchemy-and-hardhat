// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract HelloWorld {
    event UpdateMessages(string oldStr, string newStr);

    string public message;

    constructor(string memory initMessage) {
        message = initMessage;
    }

    function update(string memory newMessage) public {
        string memory oldStr = message;
        message = newMessage;
        emit UpdateMessages(oldStr, newMessage);
    }
}
