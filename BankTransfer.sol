// SPDX-License-Identifier: MIT
pragma solidity ^0.7.1;

contract BankTransfer{

    mapping (address=>uint) balance;

    function addAmount(uint _amount) public {

        balance[msg.sender]+=_amount;
        //return balance[msg.sender];
    }


    function getBalance() public view returns (uint){
        return balance[msg.sender];
    }

    function transfer(address _receiver,uint _amount) public {
        _transfer(msg.sender, _receiver, _amount);
    
    }

    function _transfer(address from, address to, uint amount) private {
        balance[from] -= amount;
        balance[to] += amount;
        
    }

}