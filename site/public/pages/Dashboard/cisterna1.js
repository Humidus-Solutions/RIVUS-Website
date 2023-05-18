const ctx5 = document.getElementById('cisterna1');

new Chart(ctx5, {
    type: 'bar',
    data: {
      labels: ['06:00', '10:00', '14:00', '18:00', '22:00'],
      datasets: [{
        label: 'Litros',
        data: [100, 200, 700,1500, 3000],

        backgroundColor: [
          '#fd3d37d2',
          '#fdfa37f5',
          '#42a5f5',
          '#fdfa37f5',
          '#fd3d37d2'
        ],
        borderWidth: 1
      }]
    },
    options: {
      reponsive: true
    }
  });