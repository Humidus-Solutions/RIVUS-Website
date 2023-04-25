
const ctx2 = document.getElementById('barChart2');

new Chart(ctx2, {
  type: 'bar',
  data: {
    labels: ['Economia de água', 'Redução de Custos', 'Sustentabilidade', 'Confiabilidade'],
    datasets: [{
      label: 'Desempenhos',
      data: [60, 30, 50, 95],
      backgroundColor: [
        '#0a84ff'
      ],
      borderWidth: 1
    }]
  },
  options: {
    responsive: true
  }
});
