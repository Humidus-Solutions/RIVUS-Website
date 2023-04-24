const ctx5 = document.getElementById('cisterna1');

new Chart(ctx5, {
    type: 'pie',
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