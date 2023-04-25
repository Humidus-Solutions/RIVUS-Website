const ctx3 = document.getElementById('lineChart2').getContext('2d');

const lineChart3 = new Chart(ctx3, {
        type: 'line',
        data: {
          labels: ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'],
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