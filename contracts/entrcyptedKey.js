const ethers = require("ethers");
const fs = require("fs");
require("dotenv").config();

async function main() {
  const wallet = new ethers.Wallet(process.env.PRIVATE_KEY);
  const encyrtedWallet = await wallet.encrypt(process.env.PRIVATE_KEY_PASSWORD); // only one paramter is required
  console.log(encyrtedWallet);
  fs.writeFileSync("encryptedKey.json", encyrtedWallet);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.log(error);
    process.exit(1);
  });
