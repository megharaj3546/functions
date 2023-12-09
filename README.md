# Token Smart Contract

## Overview

This repository contains a Solidity smart contract for a token named "Premium Token" (PT). The token is based on the ERC-20 standard and extends the OpenZeppelin ERC20 implementation. The smart contract includes additional functionality, such as initialization, minting, burning, and manual transfers.

## Smart Contract Details

### Token Features

- **Name**: Premium Token
- **Symbol**: PT

### Roles

- **Deployer**: The deployer is the account that initially deploys the smart contract and has special privileges.

### Functions

1. **initialize**
   - Description: Initializes the token contract by minting an initial supply to the deployer.
   - Access: Public
   - Restrictions: Can only be called once, and only when the contract is not yet active.

2. **mint**
   - Description: Allows the deployer to mint additional tokens and assign them to a specified address.
   - Access: Restricted to the deployer.

3. **burn**
   - Description: Allows any address to burn a specified amount of their own tokens.
   - Access: Public

4. **_transfer**
   - Description: Allows any address to transfer tokens to another address.
   - Access: Internal

### Modifiers

1. **onlyDeployer**
   - Description: Ensures that only the deployer can call the modified function.

## Getting Started

### Prerequisites

- Ensure you have a compatible Ethereum development environment set up.
- Install the necessary dependencies, including the OpenZeppelin ERC20 library.

### Deployment

1. Deploy the smart contract to an Ethereum network of your choice.
2. Call the `initialize` function to set up the initial state of the token.

## Usage

- Mint additional tokens using the `mint` function (restricted to the deployer).
- Burn your own tokens using the `burn` function.
- Transfer tokens to other addresses using the `transfer` function.

## Security Considerations

- Ensure that the deployer's private key is kept secure to prevent unauthorized access.
- Carefully review and test the smart contract in a development environment before deploying it to a live network.

## Author

Megharaj  T S

megharaj25317@gmail.com
