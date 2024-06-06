# Overview
The "Token" smart contract provides the framework for a custom token with the capability to mint and burn tokens. It features public variables storing token details like name and symbol, and a mapping to manage balances for various addresses. The "mint" function facilitates the creation of new tokens, increasing both total supply and recipient balances, while the "burn" function enables token destruction, reducing total supply and sender balances. The contract includes safeguards to ensure that token burning only occurs if the sender's balance is sufficient. It meets the specified requirements and offers a versatile foundation for managing token transactions and balances on a blockchain platform.

## Contract Details
The contract specifies the license and Solidity compiler version, followed by essential declarations and requirements. Key requirements include storing token details, managing addresses and balances, implementing minting and burning functions, and ensuring that the burning function includes balance-related conditionals.

Variables
tokenName: Stores the name of the token (e.g., "hello").
tokenSymbol: Stores the symbol of the token (e.g., "code").
totalSupply: Represents the total supply of the token, initially set to 0.
Balances Mapping

balances: Associates Ethereum addresses with their token balances, allowing efficient tracking of ownership and enabling users to retrieve their balances.
Mint Function - Token Creation

The mint function facilitates the creation of new tokens. It takes two parameters: _to (recipient's address) and _value (the number of tokens to be minted). It validates the recipient's address, increases the total supply, and increments the recipient's balance by the specified value.

Burn Function - Token Destruction
The burn function enables the destruction of tokens. It takes a single parameter: _value (the number of tokens to be burned). It ensures the sender's balance is sufficient, decreases the total supply, and reduces the sender's balance by the specified value.

### Steps To Reproduce
Access Remix IDE: Visit Remix IDE to use the Remix online IDE.
Create File: Click "New File" on the left sidebar. Name it, like "firstcode.sol," and save with the .sol extension.
Write Code: Paste the provided Solidity code into the file. Remix IDE highlights errors and provides real-time feedback.
Compile & Deploy: Use Remix to compile and deploy your contract on the Ethereum blockchain. Experience your code in action.

#### Demo: Minting Tokens
Mint Tokens: Call the mint function with your address and a value.
Example: mint("0xYourAddress", 100)
Verify Balance: Check your token balance using the balances mapping.
Example: balances("0xYourAddress") should return 100.

###### Demo: Burning Tokens
Burn Tokens: Call the burn function with a value.
Example: burn(50)
Verify Balance and Supply: Check your token balance and total supply.
Example: balances("0xYourAddress") should return 50.
Example: totalSupply should return 50.

###### License
This project is licensed under the MIT License - see the LICENSE file for details.







