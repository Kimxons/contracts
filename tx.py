import json
from web3 import Web3

matic = "https://explorer.matic.network/"

address = "0x4b21C8c23b27F41C751fE3d9E3fDF3C6a18449C4"

abi = json.loads('''
[
    {
        "inputs" : [
            {
                "internalType": "uint256",
                "name": "id",
                "type": "uint256"
            },
            {
                "internalType": "address",
                "name": "participantAdd",
                "type": "address"
            }

        ]
                
    }
]
''')

web3 = Web3(Web3.HTTPProvider(matic))
contract = web3.eth.contract(address=address,abi=abi)

account = web3.eth.account.create()
print(account.address)

test = contract.functions.setAmount(1000,account.address,100).call()

print(contract.all_functions())
print(test)