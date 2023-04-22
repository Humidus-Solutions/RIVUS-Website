const ctx = document.getElementById('lineChart').getContext('2d');

const lineChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
        datasets: [{
            label: 'Água Consumida',
            data: [15000, 13000, 10000, 12000, 12000, 13000, 14500, 15000, 13000, 15000, 12000, 12000],
            backgroundColor: [
                'blue',
            ],
            borderColor: [
                'black'
            ],
            borderWidth: 1

        },
        {
            label: 'Água Reutilizada',
            data: [7500, 6500, 5000, 6000, 6000, 6500, 7250,7500, 6500, 6000, 6000, 6000],
            backgroundColor: [
                'red',
            ],
            borderColor: [
                
                'black',
                
            ],
            borderWidth: 1

        }]
    },
    options: {
        responsive: true
    }
});