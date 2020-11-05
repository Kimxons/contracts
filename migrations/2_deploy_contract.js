var MyContract = artifacts.require("MyContract");
var Consumer = artifacts.require("Consumer");
var Distributor = artifacts.require("Distributor");
var Farmer = artifacts.require("Farmer");
var Roles = artifacts.require("Roles");

module.exports  = function(deployer)
{
    deployer.deploy(MyContract)
};