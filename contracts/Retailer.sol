// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

// Library Import - 'Roles'
import "./Roles.sol";

contract Retailer {
    using Roles for Roles.Role;

    event RetailerAdded(address indexed account);
    event RetailerRemoved(address indexed account);

    Roles.Role private retailers;

    modifier onlyRetailer() {
        require(isRetailer(msg.sender), "Sender doesn't have Retailer role.");
        _;
    }

    function isRetailer(address account) 
    public 
    view returns (bool) {
        return retailers.has(account);
    }

    function addRetailer(address account) 
    public 
    onlyRetailer {
        _addRetailer(account);
    }

    function renounceRetailer() 
    public {
        _removeRetailer(msg.sender);
    }

    function _addRetailer(address account) 
    internal {
        retailers.add(account);
        emit RetailerAdded(account);
    }

    function _removeRetailer(address account) internal {
        retailers.remove(account);
        emit RetailerRemoved(account);
    }
}