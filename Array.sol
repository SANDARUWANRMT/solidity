// SPDX-License-Identifier: MIT
pragma solidity ^0.7.5;

contract Array{

    //variable size array
    int[] numbers;
    //fixes size array
    //int[3] number;

    function pushToVariableArray(int _number) public {

        numbers.push(_number);
    }
    function getFromVariableArray(uint _index)public view returns(int){

        return numbers[_index];
        
    }

    function getAllNumbers() public view returns(int[] memory){
        return numbers;
    }


}
