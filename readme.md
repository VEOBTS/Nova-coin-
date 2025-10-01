# Nova Coin (NOVA) Module

A Sui Move module for creating and managing a custom coin called **NOVA**.  
Perfect for testing, learning Move coin mechanics, or deploying a personal devnet token.

---

## 🚀 Features

- Define a custom coin type (`NOVA`)  
- Initialize coin treasury and metadata  
- Mint coins securely to any address  
- Built using the Sui Move coin framework  


## After deploying the nova module, the mint function lets you issue new coins to any wallet.

sui client call \
  --module nova \
  --function mint \
  --args <treasury_cap_object_id> 1000 <recipient_address> \
  --gas-budget 1000000

treasury_cap_object_id is obtained during init — it authorizes minting.

Only treasury holders can mint coins.

1000 is the amount to mint, and <recipient_address> is the destination wallet.

This call is done after the module is published, i.e., after deployment.
##
The Nova Coin module helps beginners understand how coins and treasury objects work on Sui. It demonstrates how init and mint control coin creation and distribution, and provides hands-on experience with on-chain smart contract interactions. This project serves as a solid foundation for learning Move and blockchain development.