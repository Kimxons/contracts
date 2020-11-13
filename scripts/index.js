//scripts/index.js
module.exports = async function main(callback) {
  try {
    // Our code will go here
    const accounts = await web3.eth.getAccounts();
    console.log(accounts)

    const MyContract = artifacts.require("MyContract");
    const contract = await MyContract.deployed();

    value = await contract.retrieve();
    console.log("", value.toString());

    callback(0);
  } catch (error) {
    console.error(error);
    callback(1);
  }
}

//TODO - write automated tests for the smart contracts