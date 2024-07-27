// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

interface ContractManager {
  struct Contract {
    string name;
    address addr;
  }

  function getDeployedContracts() external view returns(Contract[] memory);
  function getDeployedContractsForCreator(address creator) external view returns (Contract[] memory);
  function createNewERC20Contract(string calldata name, string calldata ticket, uint8 decimals, uint256 mintValue) external returns(address);
  function createNewNativeWrapperContract(string calldata erc20name, string calldata erc20ticker, uint8 erc20decimals) external returns(address);
  function createNewDEXV2PairContract() external returns(address);
  function createNewDEXV2FactoryContract(address feeToSetter) external returns(address);
  function createNewDEXV2Router02Contract(address factory, address nativeWrapper) external returns(address);
  function createNewERC721Contract(string calldata erc721name, string calldata erc721symbol) external returns(address);
}
