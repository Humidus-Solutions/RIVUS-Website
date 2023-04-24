const ctx6 = document.getElementById('cisterna2');

new Chart(ctx6, {
    type: 'bar',
    data: {
      labels: ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio'],
      datasets: [{
        label: 'Litros',
        data: [150, 200, 700,1500, 3000],

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