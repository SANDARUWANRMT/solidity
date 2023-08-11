// SPDX-License-Identifier: MIT
pragma solidity ^0.7.5;

contract Calculator{

    int a=5;
    int b=2;

    function setValue(int _value1) public {
        a=_value1;
    }

    function setValue2(int _value2) public {
        b=_value2;
    }

    function add() public view returns (int){
        return a+b;
    }

    function subtract() public view returns(int){
        return a-b;
    }

    function multiply() public view returns (int){
        return a*b;
    }

    function divide() public view returns (int){
        return a/b;
    }

    function reminder() public view returns (int){
        return a%b;
    }

}


