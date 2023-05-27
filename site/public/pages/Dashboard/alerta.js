var alertas = [];

function obterdados(isCisterna) {
    fetch(`/medidas/tempo-real/${isCisterna}`)
        .then(resposta => {

            if (resposta.ok) {
                resposta.json().then(resposta => {

                    console.log(`Dados recebidos: ${JSON.stringify(resposta)}`);

                    alertar(resposta, isCisterna);
                });
            } else {

                console.error('Nenhum dado encontrado ou erro na API');
            }
        })
        .catch(function (error) {
            console.error(`Erro na obtenção dos dados do cisterna p/ gráfico: ${error.message}`);
        });

}

function alertar(resposta, isCisterna) {
    var temp = resposta[0].medida;

    console.log(isCisterna === resposta[0].fk_cisterna)
    
    var grauDeAviso ='';


    var limites = {
        muito_quente: 5,
        quente: 4,
        ideal: 3,
        frio: 2,
        muito_frio: 1
    };

    var classe_temperatura = 'cor-alerta';

    if (temp >= limites.muito_quente) {
        classe_temperatura = 'cor-alerta perigo-quente';
        grauDeAviso = 'perigo quente'
        grauDeAvisoCor = 'cor-alerta perigo-quente'
        exibirAlerta(temp, isCisterna, grauDeAviso, grauDeAvisoCor)
    }
    else if (temp < limites.muito_quente && temp >= limites.quente) {
        classe_temperatura = 'cor-alerta alerta-quente';
        grauDeAviso = 'alerta quente'
        grauDeAvisoCor = 'cor-alerta alerta-quente'
        exibirAlerta(temp, isCisterna, grauDeAviso, grauDeAvisoCor)
    }
    else if (temp < limites.quente && temp > limites.frio) {
        classe_temperatura = 'cor-alerta ideal';
        removerAlerta(isCisterna);
    }
    else if (temp <= limites.frio && temp > limites.muito_frio) {
        classe_temperatura = 'cor-alerta alerta-frio';
        grauDeAviso = 'alerta frio'
        grauDeAvisoCor = 'cor-alerta alerta-frio'
        exibirAlerta(temp, isCisterna, grauDeAviso, grauDeAvisoCor)
    }
    else if (temp <= limites.muito_frio) {
        classe_temperatura = 'cor-alerta perigo-frio';
        grauDeAviso = 'perigo frio'
        grauDeAvisoCor = 'cor-alerta perigo-frio'
        exibirAlerta(temp, isCisterna, grauDeAviso, grauDeAvisoCor)
    }

    var card;

    if (isCisterna == 1) {
        temp_cisterna_1.innerHTML = temp + "°C";
        card = card_1
    } else if (isCisterna == 2) {
        temp_cisterna_2.innerHTML = temp + "°C";
        card = card_2
    } else if (isCisterna == 3) {
        temp_cisterna_3.innerHTML = temp + "°C";
        card = card_3
    } else if (isCisterna == 4) {
        temp_cisterna_4.innerHTML = temp + "°C";
        card = card_4
    }

    card.className = classe_temperatura;
}

function exibirAlerta(temp, isCisterna, grauDeAviso, grauDeAvisoCor) {
    var indice = alertas.findIndex(item => item.isCisterna == isCisterna);

    if (indice >= 0) {
        alertas[indice] = { isCisterna, temp, grauDeAviso, grauDeAvisoCor }
    } else {
        alertas.push({ isCisterna, temp, grauDeAviso, grauDeAvisoCor });
    }

    exibirCards();
    
// Dentro da div com classe grauDeAvisoCor há um caractere "invisível", 
// que pode ser inserido clicando com o seu teclado em alt+255 ou pelo código adicionado acima.
}

function removerAlerta(isCisterna) {
    alertas = alertas.filter(item => item.isCisterna != isCisterna);
    exibirCards();
}
 
function exibirCards() {
    alerta.innerHTML = '';

    for (var i = 0; i < alertas.length; i++) {
        var mensagem = alertas[i];
        alerta.innerHTML += transformarEmDiv(mensagem);
    }
}

function transformarEmDiv({ isCisterna, temp, grauDeAviso, grauDeAvisoCor }) {
    return `<div class="mensagem-alarme">
    <div class="informacao">
    <div class="${grauDeAvisoCor}">&#12644;</div> 
     <h3>Aquário ${isCisterna} está em estado de ${grauDeAviso}!</h3>
    <small>Temperatura ${temp}.</small>   
    </div>
    <div class="alarme-sino"></div>
    </div>`;
}
