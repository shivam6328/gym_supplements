pragma solidity ^0.5.0;


contract Sell{
    struct buyer{
        address seller_hash;
        string seller_name;
        string contact_number;
        uint seller_age;
    }
    
    seller[16] public sellers;

    function buy(uint suppID,string memory name,string memory contact,uint age) public returns (uint) {
        require(suppID>0 && suppID<=15);
        seller memory new_seller=seller();
        new_seller.seller_name=name;
        new_seller.seller_age=age;
        new_seller.contact_number=contact;
        new_seller.seller_hash=msg.sender;
        sellers[suppID]=new_seller;
        return suppID;
    }

    function getSellers() public view returns (seller[16] memory) {
        return sellers;
    }

    function edit_name(uint suppID,string memory new_name) public{
        sellers[suppID].seller_name=new_name;
    }
    
    function edit_age(uint suppID,uint new_age) public{
        sellers[suppID].seller_age=new_age;
    }
    
    function edit_contact(uint suppID,string memory new_contact) public{
        sellers[suppID].contact_number=new_contact;
    }

}