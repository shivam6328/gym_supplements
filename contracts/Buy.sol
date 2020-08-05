pragma solidity ^0.5.0;

contract Buy{

    address[16] public buyers;

    function buy(uint suppID) public returns (uint) {
        require(suppID>0 && suppID<=15);
        buyers[suppID]=msg.sender;
        return suppID;
    }

    function getBuyers() public view returns (address[16] memory) {
        return buyers;
    }

    

}