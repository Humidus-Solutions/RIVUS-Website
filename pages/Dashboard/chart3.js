const ctx3 = document.getElementById('lineChart').getContext('2d');

const lineChart3 = new Chart(ctx3, {
        type: 'line',
        data: {
          labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
          datasets: [{
            label: 'Qualidade da Água',
            data: [10,13,16,15,19,19,22,25,23,30,32,35],
            borderWidth: 1
          }]
        },
    options: {
        responsive: true
    }
});