// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

// Library Import - 'Roles'
import "./Roles.sol";

contract Distributor {
    using Roles for Roles.Role;

    event DistributorAdded(address indexed accounts);
    event DistributorRemoved(address indexed accounts);

    Roles.Role private distributor;

    modifier onlyDistributor() {
        require(isDistributor(msg.sender), "Sender doesn't have Distributor role.");
        _;
    }

    function isDistributor(address account) 
    public 
    view 
    returns (bool) {
        return distributor.has(account);
    }

    function addDistributor(address account) 
    public onlyDistributor {
        _addDistributor(account);
    }

    function renounceDistributor() 
    public {
        _removeDistributor(msg.sender);
    }

    function _addDistributor(address account) 
    internal {
        distributor.add(account);
        emit DistributorAdded(account);
    }

    function _removeDistributor(address account) 
    internal {
        distributor.remove(account);
        emit DistributorRemoved(account);
    }
}
