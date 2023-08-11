// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract SecuredBankTransfer{

    mapping (address=>uint) balance;

    address owner;

    //assing owner permenantly
    constructor(){
        owner = msg.sender;
    }

    function SecureBankTransfer(uint _amount) public {
        require(msg.sender == owner); //check the real ower

        balance[msg.sender]+=_amount;
        //return balance[msg.sender];
    }


    function getBalance() public view returns (uint){
        return balance[msg.sender];
    }

    function transfer(address _receiver,uint _amount) public {
        require(msg.sender != _receiver, "same address has been used to send money");
        require(balance[msg.sender]>= _amount, "not enough money");
        require(_amount >= 10, "minimum transfer amount is 10");

        uint preBalance = balance[msg.sender];

        _transfer(msg.sender, _receiver, _amount);

        //check the status after the transaction
        assert(balance[msg.sender] == preBalance - _amount);

    
    }

    function _transfer(address from, address to, uint amount) private {
        balance[from] -= amount;
        balance[to] += amount;
        
    }

}