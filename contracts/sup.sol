// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

import "./Farmer.sol";
import "./Distributor.sol";
import "./Retailer.sol";
import "./Consumer.sol";

// import "@openzeppelin/contracts/access/Ownable.sol";

// this works similar to the openezeppelin contract - Ownable.sol
contract MyContract {
    address private Owner;

    event TransferOwnership(
        address indexed oldOwner, 
      
        address indexed newOwner
    );

    function owner() 
        public 
        view 
        returns (address) {
            return Owner;
        }

    modifier onlyOwner() {
        require(isOwner());
        _;
    }

    function isOwner() 
        public 
        view 
        returns (bool) {
            return msg.sender == Owner;
        }

    function renounceOwnership() 
        public onlyOwner {
            emit TransferOwnership(Owner, address(0));
            Owner = address(0);
        }

    function transferOwnership(address newOwner) 
        public onlyOwner {
            _transferOwnership(newOwner);
        }

    /// internal function to transfer ownership
    function _transferOwnership(address newOwner) 
        internal {
            require(newOwner != address(0));
            emit TransferOwnership(Owner, newOwner);
            Owner = newOwner;
        }
}