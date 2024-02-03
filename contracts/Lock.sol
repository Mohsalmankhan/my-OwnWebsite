// SPDX-License-Identifier: UNLICENSED
// SPDX-License-Identifi9er: SEE LICENSE IN LICENSE
pragma solidity ^0.8.9;

contract HelloWorld {
    //events
    //states
    //functions

    event messagechanged(string oldmsg, string newmsg);

    string public message;

    constructor(string memory firstmessage) {
        message = firstmessage;
    }

    function update(string memory newmesssage) public {
        string memory oldmsg = message;
        message = newmesssage;

        emit messagechanged(oldmsg, newmesssage);
    }
}
