// SPDX-License-Identifier: MIT
pragma solidity ^0.7.1;

contract Mapping{

    mapping (address=>uint) balance;

    function addAmount(uint _amount) public {

        balance[msg.sender]+=_amount;
        //return balance[msg.sender];
    }

    function getBalance() public view returns (uint){
        return balance[msg.sender];
    }

}s