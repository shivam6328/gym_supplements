var Buysupp = artifacts.require("Buy");
var Sellsupp = artifacts.require("Sell");

module.exports = function(deployer){
    deployer.deploy(Buysupp);
    deployer.deploy(Sellsupp);
};