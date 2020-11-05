// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

// import libraries 
import "./Consumer.sol";

contract SupplyChain {
    address payable Owner = msg.sender;

    constructor ()
        public{
            Owner = msg.sender;
        }

    modifier onlyOwner(){
        require(
            msg.sender == Owner,
            "only owner can call this function"
        );
        _;
    }

    enum roles {
        farmer,
        distributor,
        consumer,
        retailer,
        revoke
    }
    event UserRegister(address indexed EthAddress, bytes32 Name);
    event UserRoleRevoked(address indexed EthAddress, bytes32 Name, uint Role);

    function registerUser(
        address EthAddress,
        bytes32 Name,
        bytes32 Location,
        uint Role
    )
    public onlyOwner{
        
    }
}