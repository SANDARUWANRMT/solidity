// SPDX-License-Identifier: MIT
pragma solidity ^0.7.5;

contract whileloop{

    function addCumulative(int _number) public pure  returns(int){

        int i=_number;
        int j=1;
        while(j<=_number){
            
            i+=i;
            j++;
        }
        return i;
    }

}
