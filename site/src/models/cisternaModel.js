var database = require("../database/config");

function puxarLitros() {
  var instrucao = `
        SELECT litros FROM cisterna;
    `;
  console.log("Executando a instrução SQL: \n" + instrucao);
  return database.executar(instrucao);
}

module.exports = {
  puxarLitros,
};
