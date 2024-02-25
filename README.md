# Wizard Token

Wizard Token is a simple Ethereum-based ERC-20 token implementation with basic functionalities, such as transferring tokens, checking balances, minting, and burning tokens. The contract is written in Solidity and follows the ERC-20 standard, providing compatibility with various decentralized applications (DApps) and platforms.

## Overview

The project consists of two main files:

1. **IWizToken.sol**: This file defines an interface `IWizToken` that declares the functions and events required for an ERC-20 token. It includes functions for retrieving the total token supply, transferring tokens, and checking the balance of a specific address.

2. **WizardToken.sol**: This file implements the `WizardToken` contract, which is an ERC-20 token that adheres to the `IWizToken` interface. It includes functionalities like transferring tokens, checking balances, minting new tokens, and burning existing tokens. The contract also includes error handling to ensure secure and predictable behavior.

## Features

- **Transfers**: Users can transfer Wizard Tokens to other addresses using the `transfer` function.
  
- **Balances**: The `balanceOf` function allows users to check the balance of a specific address.

- **Minting**: The `mint` function enables the owner to create new tokens and add them to the total supply.

- **Burning**: Users can destroy their own tokens using the `burn` function, reducing the total token supply.

## Getting Started

1. Deploy the `WizardToken` contract on the Ethereum blockchain, providing the name, symbol, and decimal places during deployment.

2. Use the deployed contract address to interact with the token through any Ethereum wallet or DApp that supports ERC-20 tokens.

## Contract Details

- **Name**: Name of the token.
- **Symbol**: Symbolic representation of the token.
- **Decimals**: Number of decimal places for token values.
- **Owner**: The address that deployed the contract and has special privileges (e.g., minting new tokens).

## Usage

- **Transferring Tokens**: Use the `transfer` function to send tokens to another address.

- **Checking Balances**: Call the `balanceOf` function to check the token balance of a specific address.

- **Minting Tokens**: Only the owner can mint new tokens using the `mint` function.

- **Burning Tokens**: Users can burn their own tokens with the `burn` function, reducing the total supply.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.