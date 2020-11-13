var MyContract = artifacts.require("MyContract"); //this is the main smart contract

module.exports  = function(deployer) {
    deployer.deploy(MyContract);
};