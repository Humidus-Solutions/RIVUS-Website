const ctx = document.getElementById('lineChart').getContext('2d');

const lineChart = new Chart(ctx, {
    type: 'line',
    data: {
        labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
        datasets: [{
            label: 'Earned Points',
            data: [0, 10, 5, 2, 20, 30, 45],
            backgroundColor: [
                'rgba(255, 206, 86, 0.2)',
            ],
            borderColor: [
                'rgba(54, 162, 235, 1)'
            ],
            borderWidth: 1

        },
        {
            label: 'Earned Points',
            data: [10, 110, 15, 12, 120, 130, 145],
            backgroundColor: [
                'rgba(75, 192, 192, 0.2)',
            ],
            borderColor: [
                
                'rgba(75, 192, 192, 1)',
                
            ],
            borderWidth: 1

        },
        {
            label: 'Earned Points',
            data: [110, 110, 115, 112, 20, 30, 45],
            backgroundColor: [
                'rgba(75, 192, 192, 0.2)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)'
            ],
            borderWidth: 1

        }]
    },
    options: {
        responsive: true
    }
});