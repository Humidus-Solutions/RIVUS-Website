const ctx5 = document.getElementById('cisterna1');

new Chart(ctx5, {
    type: 'bar',
    data: {
      labels: ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio'],
      datasets: [{
        label: 'Litros',
        data: [100, 200, 700,1500, 3000],

        backgroundColor: [
          '#5c6bc0',
          '#9ccc65',
          '#42a5f5',
          '#ffee58',
          '#ff7043'
        ],
        borderWidth: 1
      }]
    },
    options: {
      reponsive: true
    }
  });