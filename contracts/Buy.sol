pragma solidity ^0.5.0;


contract Buy{
    struct buyer{
        address buyer_hash;
        string buyer_name;
        string contact_number;
        uint buyer_age;
    }
    
    buyer[16] public buyers;

    function buy(uint suppID,string memory name,string memory contact,uint age) public returns (uint) {
        require(suppID>0 && suppID<=15);
        buyer memory new_buyer=buyer();
        new_buyer.buyer_name=name;
        new_buyer.buyer_age=age;
        new_buyer.contact_number=contact;
        new_buyer.buyer_hash=msg.sender;
        buyers[suppID]=new_buyer;
        return suppID;
    }

    function getBuyers() public view returns (buyer[16] memory) {
        return buyers;
    }
    
    function edit_name(uint suppID,string memory new_name) public{
        buyers[suppID].buyer_name=new_name;
    }
    
    function edit_age(uint suppID,uint new_age) public{
        buyers[suppID].buyer_age=new_age;
    }
    
    function edit_contact(uint suppID,string memory new_contact) public{
        buyers[suppID].contact_number=new_contact;
    }

}