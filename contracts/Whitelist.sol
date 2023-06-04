pragma solidity ^0.8.18;

contract WhiteList{
    uint8 public maxAllowedWhiteList;
    mapping(address=>bool) public whitelist;
    uint8 public mapLength = 0;

    constructor(uint8 _maxAllowedWhiteList){
        maxAllowedWhiteList = _maxAllowedWhiteList;
    }

    function addToWhitelist() public{
        require(mapLength < maxAllowedWhiteList, "Whitelist is full.");
        require(!whitelist[msg.sender], "Address is already whitelisted.");
        whitelist[msg.sender] = true;
        mapLength += 1;
    }
}
