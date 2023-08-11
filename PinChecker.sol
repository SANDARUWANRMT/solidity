// SPDX-License-Identifier: MIT
pragma solidity ^0.7.5;

contract PinChecker{

    uint pin;

    constructor(uint _pin){
        pin=_pin;
    }

    function checkPIn(uint _enterPin) public view returns(string memory){

        string memory result;

        if (_enterPin==pin){
            result="you are right";
        }else {
            return "you have entered wrong pin. Try again";
        }
        return result;
    }


}


