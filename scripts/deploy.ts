import { ethers } from "hardhat";

async function main() {
  
  const onchainNFT = await ethers.deployContract("DNLNFT");

  await onchainNFT.waitForDeployment();

  console.log(
    `OnchainNFT deployed to ${onchainNFT.target}`
  );
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
