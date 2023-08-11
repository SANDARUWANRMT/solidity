// SPDX-License-Identifier: MIT
pragma solidity ^0.7.5;

contract Struct{

// struct is a custom data type like a class in OOP. We can use it for save set of different data

    struct Person{
        uint age;
        string name;
        uint phnno;
    }
    
    Person[] people;

    function addPerson(uint _age, string memory _name,uint _4nno) public {
        Person memory newperson= Person(_age,_name,_4nno);
    people.push(newperson);

    }
    function getPerson(uint _index) public view returns (uint, string memory, uint){

        //can use under mentioned codes also
       // Person memory newperson= people[_index];
        //return (newperson.age, newperson.name, newperson.phnno);

        return (people[_index].age, people[_index].name, people[_index].phnno);
    }
 }



