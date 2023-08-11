// SPDX-License-Identifier: MIT
pragma solidity ^0.7.5;

contract Constructor{

//constructor use krnne contract ek deploy weddim apit mna hri krnn oni nm. mekth hriyt function ekk wge thm
//ownerge nm input ekk wdht arn save krn wge plwn. bt setName() function ek haduwe nththn aye jeewithet wns krnn baa.

    string owner;
    constructor(string memory _owner){
        owner=_owner;
    }

    function setOwner(string memory _owner) public {
        owner=_owner;
    }

    function getowner() public view returns (string memory){
        return owner;
    }

}
