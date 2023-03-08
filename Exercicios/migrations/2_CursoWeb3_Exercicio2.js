const CursoWeb3_Exercicio2 = artifacts.require("CursoWeb3_Exercicio2");

module.exports = function (deployer) {
  deployer.deploy(CursoWeb3_Exercicio2, "Andre");
};