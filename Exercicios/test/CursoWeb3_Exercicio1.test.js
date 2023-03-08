const CursoWeb3_Exercicio1 = artifacts.require("CursoWeb3_Exercicio1");

contract('CursoWeb3_Exercicio1', function(accounts) {
    beforeEach(async() => {
        contract = await CursoWeb3_Exercicio1.new();
    })

    it('Add Customer', async() => {
        await contract.addCustomer({
            name: "Andre",
            age: 31
        }, {from: accounts[0]});

        const count = await contract.count();
        assert(count.toNumber() === 1, "Couldn't add customer.");
    })
})