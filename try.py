from web3 import Web3, HTTPProvider
import json

matic = ""

address = ""

abi = json.loads('''[
{
"inputs": [
{
"internalType": "uint256",
"name": "id",
"type": "uint256"
},
{
"internalType": "address",
"name": "DistributorAdd",
"type": "address"
},
{
"internalType": "uint256",
"name": "_investment",
"type": "uint256"
}
],
"name": "addDistributor",
"outputs": [],
"stateMutability": "nonpayable",
"type": "function"
},
{
"inputs": [
{
"internalType": "uint256",
"name": "id",
"type": "uint256"
},
{
"internalType": "address",
"name": "_buyer",
"type": "address"
},
{
"internalType": "uint256",
"name": "amount",
"type": "uint256"
}
],
"name": "setAmount",
"outputs": [],
"stateMutability": "nonpayable",
"type": "function"
},
{
"inputs": [
{
"internalType": "uint256",
"name": "id",
"type": "uint256"
},
{
"internalType": "address",
"name": "_seller",
"type": "address"
},
{
"internalType": "uint256",
"name": "amount",
"type": "uint256"
}
],
"name": "setCapital",
"outputs": [],
"stateMutability": "nonpayable",
"type": "function"
},
{
"inputs": [
{
"internalType": "uint256",
"name": "id",
"type": "uint256"
}
],
"name": "getter",
"outputs": [
{
"internalType": "uint256",
"name": "",
"type": "uint256"
},
{
"internalType": "uint256",
"name": "",
"type": "uint256"
}
],
"stateMutability": "view",
"type": "function"
}
]''')

web3 = Web3(Web3.HTTPProvider(matic))
# web3.eth is for ethereum blockchain and smartcontracts
contract = web3.eth.contract(address=address, abi=abi)

account = web3.eth.account.create()
print(account.address)
# print(account._private_key)

test = contract.functions.setAmount(21000,account.address,100).call()

print(contract.all_funtions())
print(test)