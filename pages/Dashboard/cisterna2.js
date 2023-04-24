const ctx6 = document.getElementById('cisterna2');

new Chart(ctx6, {
    type: 'bar',
    data: {
      labels: ['06:00', '10:00', '14:00', '18:00', '22:00'],
      datasets: [{
        label: 'Litros',
        data: [150, 200, 700,1500, 3000],

        backgroundColor: [
          'red',
          'yellow',
          '#42a5f5',
          'yellow',
          'red'
        ],
        borderWidth: 1
      }]
    },
    options: {
      reponsive: true
    }
  });