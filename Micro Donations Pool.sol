// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DonationPool {
    address public charityAddress;
    uint256 public totalDonations;

    event DonationReceived(address indexed donor, uint256 amount);
    event FundsWithdrawn(address indexed charity, uint256 amount);

    function setCharityAddress(address _charity) public {
        require(charityAddress == address(0), "Charity address already set");
        charityAddress = _charity;
    }

    function donate() public payable {
        require(msg.value > 0, "Must send ETH to donate");
        totalDonations += msg.value;
        emit DonationReceived(msg.sender, msg.value);
    }

    function withdrawFunds() public {
        require(msg.sender == charityAddress, "Only charity can withdraw");
        require(address(this).balance > 0, "No funds to withdraw");

        uint256 amount = address(this).balance;
        payable(charityAddress).transfer(amount);
        totalDonations = 0;

        emit FundsWithdrawn(charityAddress, amount);
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}
