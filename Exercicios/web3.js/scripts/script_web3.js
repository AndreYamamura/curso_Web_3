(async () => {
  try {
    console.log('deploy...')
    
    let contract = new web3.eth.Contract([
		{
			"inputs": [],
			"name": "getNumber",
			"outputs": [
				{
					"internalType": "uint256",
					"name": "",
					"type": "uint256"
				}
			],
			"stateMutability": "view",
			"type": "function"
		},
		{
			"inputs": [],
			"name": "numberSaved",
			"outputs": [
				{
					"internalType": "uint256",
					"name": "",
					"type": "uint256"
				}
			],
			"stateMutability": "view",
			"type": "function"
		}
	], "0x5e17b14ADd6c386305A32928F985b29bbA34Eff5")
   
   console.log("The number saved in contract is: ")
   contract.methods.numberSaved().call().then(console.log)
  } catch (e) {
    console.log(e.message)
  }
})()