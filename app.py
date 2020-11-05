import json 
from web3 import Web3, HTTPProvider

# truffle dev blockchain address
address = "http://127.0.0.1:9545" 

# client instance to interact with the blockchain
web3 = Web3(HTTPProvider(address))

# default account
web3.eth.defaultAccount = web3.eth.accounts[0]
# print(web3.eth.defaultAccount.address)

# compiled_contract path
compiled_contract_path = "build/contracts/MyContract.json"

# deployed contract path 
deployed_contract_address = "0x17faAF75c6E70557Ca0095FB12EbFbe2A8F0eB9F"

with open(compiled_contract_path) as file:
    contract_json = json.load(file) #load contract info as JSON
    contract_abi = contract_json['abi'] #fetch contract's abi

# deployed contract reference fetching
contract = web3.eth.contract(address=deployed_contract_address, abi=contract_abi)

# calling contract function
# message = contract.functions.owner().call() 

# print(message) 