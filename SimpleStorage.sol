// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract SimpleStorage{
    
    // esto sera inicializado en int208
    uint256 public favoriteNumber;
    
    struct People{
        uint256 favoriteNumber;
        string name;
    }
    
    People public person = People({favoriteNumber:2, name: "Chris"});
    
    function store(uint256 _favoriteNumber) public{
        favoriteNumber = _favoriteNumber
    }
    
    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }
    
    function addPerson(string memory _name, uint256 _favoriteNumber) public{
        people.push(People(_favoriteNumber, _name));
    }
}