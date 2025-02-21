# Micro-Donations-Pool
# 💰 Micro Donations Pool  

The **Micro Donations Pool** is a decentralized smart contract that allows users to **donate ETH** for charitable causes. It securely holds the funds and enables **only a predefined charity** to withdraw them.  

## 🚀 Features  
✅ **Open Donations** – Anyone can donate ETH to the contract.  
✅ **Secure Fund Storage** – Funds remain in the contract until withdrawn.  
✅ **Charity-Only Withdrawals** – Only the assigned charity address can withdraw.  
✅ **One-Time Charity Setup** – The charity address is set once and cannot be changed.  
✅ **Transparent & Decentralized** – All transactions are recorded on-chain.  

## 📌 How It Works  
1. **Donors contribute ETH** using `donate()`.  
2. **Funds accumulate** in the contract.  
3. **The charity address is set** once using `setCharityAddress()`.  
4. **The assigned charity** withdraws funds with `withdrawFunds()`.  
5. **The balance can be checked** using `getBalance()`.  

## 🌎 Deployed Contract  
**Network:** EDU Chain  
**Deployed Address:** `your deployed address from Remix`  

## 🔗 Smart Contract Functions  
- `setCharityAddress(address _charity)` – Sets the charity address (only once).  
- `donate()` – Allows anyone to donate ETH to the pool.  
- `withdrawFunds()` – Lets the charity withdraw the total balance.  
- `getBalance()` – Returns the total donations stored in the contract.  

## 🛠 Deployment & Interaction  
- **Use MetaMask**, Remix, or a blockchain explorer to interact.  
- **Track Donations** using the on-chain transaction history.  

---

💡 **A decentralized, secure, and trustless way to collect and distribute donations! 🚀**  
