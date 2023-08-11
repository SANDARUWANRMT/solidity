// SPDX-License-Identifier: MIT
pragma solidity ^0.7.5;

contract // SPDX-License-Identifier: MIT
pragma solidity ^0.7.5;

contract Forloop{

    function addCumulative(int _number) public pure  returns(int){

        for (int i=0;  i<10; i++) 
        {
            _number++;
        }
        return _number;
    }

}
{

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
