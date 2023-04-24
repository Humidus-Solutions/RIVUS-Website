const ctx6 = document.getElementById('cisterna2');

new Chart(ctx6, {
    type: 'line',
    data: {
      labels: ['Banheiro', 'Jardim', 'Cozinha', 'Escritórios'],
      datasets: [{
        label: 'Distribuição de Água',
        data: [60, 20, 15,5],
        borderWidth: 1
      }]
    },
    options: {
      reponsive: true
    }
  });