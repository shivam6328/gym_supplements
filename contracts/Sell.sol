pragma solidity ^0.5.0;

contract Sell{

    address[16] public sellers;

    constructor() public{
        sellers[1]=address(234);
    }

    function sell(uint suppID) public returns (uint) {
        require(suppID>0 && suppID<=15);
        sellers[suppID]=msg.sender;
        return suppID;
    }

    function getSellers() public view returns (address[16] memory) {
        return sellers;
    }

}