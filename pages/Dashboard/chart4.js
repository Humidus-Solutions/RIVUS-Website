const ctx4 = document.getElementById('doughnut2');

new Chart(ctx4, {
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