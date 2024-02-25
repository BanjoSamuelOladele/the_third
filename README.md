# Wizard Token (WTK)

Wizard Token (WTK) is an Ethereum-based ERC-20 token smart contract created by Oladele (Whitewizardd). This contract, built on the OpenZeppelin library, provides a straightforward and extensible ERC-20 token with additional features for minting, burning, and ownership management.

## Motivation

The primary motivation behind Wizard Token is to offer developers a reliable foundation for creating their ERC-20 tokens on the Ethereum blockchain. By leveraging the OpenZeppelin library, this contract inherits standard ERC-20 features while incorporating burnable functionality and ownership controls. The goal is to provide a versatile template that can serve as a starting point for various token projects.

## Features

### ERC-20 Standard Compliance

Wizard Token adheres to the ERC-20 standard, ensuring compatibility with a wide range of decentralized applications (DApps), exchanges, and wallets that support this standard.

### Minting Functionality

The contract includes a `mint` function, accessible only by the owner (Oladele), allowing the creation of new tokens and their distribution to specified addresses. This feature is useful for token issuance and distribution.

### Burnable Tokens

In addition to standard ERC-20 functionality, Wizard Token is burnable. Token holders can destroy their tokens, reducing the total supply. This feature can be beneficial for tokenomics and ecosystem management.

### Ownership Controls

The contract inherits from the `Ownable` contract in OpenZeppelin, ensuring that only the owner (Oladele) has the authority to execute specific functions. This ownership control enhances the security and management of the token contract.

## Usage

1. Deploy the Wizard Token (WTK) contract to the Ethereum blockchain.

2. Interact with the contract using standard ERC-20 token methods.

   - Transfer tokens to other addresses.
   - Approve and transferFrom tokens.
   - Burn tokens using the `burn` function.
   - Mint new tokens using the `mint` function (accessible only by the owner, Oladele).

3. Customize the contract as needed for specific project requirements.

## Getting Started

To get started, make sure you have an Ethereum development environment set up, including a compatible blockchain network for deployment. You can deploy the contract using tools like Remix, Truffle, or Hardhat.

```bash
npm install @openzeppelin/contracts
```

## Author

- Oladele (Whitewizardd)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.