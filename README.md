# Token Smart Contract 
The "Token" smart contract provides the framework for a custom token with the capability to mint and burn tokens. It features public variables storing token details like name and symbol, and a mapping to manage balances for various addresses. The "mint" function facilitates the creation of new tokens, increasing both total supply and recipient balances, while the "burn" function enables token destruction, reducing total supply and sender balances. The contract includes safeguards to ensure that token burning only occurs if the sender's balance is sufficient. It meets the specified requirements and offers a versatile foundation for managing token transactions and balances on a blockchain platform.
## Contract Details
The contract specifies the license and Solidity compiler version, followed by essential declarations and requirements. Key requirements include storing token details, managing addresses and balances, implementing minting and burning functions, and ensuring that the burning function includes balance-related conditionals.Variables(tokenName,tokenSymbol,totalSupply).

 Steps To Reproduce
Access Remix IDE: Visit Remix IDE to use the Remix online IDE.
Create File: Click "New File" on the left sidebar. Name it, like "firstcode.sol," and save with the .sol extension.
Write Code: Paste the provided Solidity code into the file. Remix IDE highlights errors and provides real-time feedback.
Compile & Deploy: Use Remix to compile and deploy your contract on the Ethereum blockchain. Experience your code in action.

### Demo: Minting Tokens
Mint Tokens: Call the mint function with your address and a value.
Example: mint("0xYourAddress", 100)
Verify Balance: Check your token balance using the balances mapping.
Example: balances("0xYourAddress") should return 100.

#### Demo: Burning Tokens
Burn Tokens: Call the burn function with a value.
Example: burn(50)
Verify Balance and Supply: Check your token balance and total supply.
Example: balances("0xYourAddress") should return 50.
Example: totalSupply should return 50.









