// SPDX-License-Identifier: MIT
pragma solidity ^0.7.5;

contract Function{

// data type ekt psse public kyl dmmth eem e varable ek deploy krm visible wnw nthhn 
    
    string name="Sadaruwan";
    string public a="PUBLIC key word ek use krpu varable ekk meka";

    function getName() public view returns(string memory){
        
        return name;
    }

    function setName(string memory _name) public {
        name=_name;
    }

}