// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract SendFunds {
    uint256 public amountToSend = 0.1 ether; // amount to be sent in ether
    
    constructor() payable {
        require(msg.value >= amountToSend, "The contract must be funded with at least the amount to send.");
    }
    
    function sendFunds() public {
        require(address(this).balance >= amountToSend, "The contract balance is insufficient.");
        payable(msg.sender).transfer(amountToSend);
    }
}