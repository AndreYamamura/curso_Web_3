const CursoWeb3_Exercicio2 = artifacts.require("CursoWeb3_Exercicio2");

contract('CursoWeb3_Exercicio2', function(accounts) {
    const name = "Andre";
    const txParams = { from: accounts[0] };

    beforeEach(async() => {
        contract = await CursoWeb3_Exercicio2.new(name, txParams);
    })

    it('Getting name in constructor', async() => {
        const nameInConstructor = await contract.getName();
        assert(nameInConstructor === "Andre", "Couldn't get name in constructor.");
    })
})