@extends('dashboard.layouts.main')

<script type="text/javascript" src="../js/Chart.min.js"></script>

@section('container')

<?php
$x = [
    2018,
    2019,
    2020,
    2021
];

$y = [
    214,
    145,
    840,
    671
];

$regresi = new $rlb($x, $y);
?>

<br>
<h3>Regresi Linear Berganda dengan ChartJS</h3>

<canvas id="graph" width=500 height="150"></canvas>
<script>
    ctx = document.getElementById('graph');
    var chart = new Chart(ctx, {
        type : 'line',
        data: {
            labels: [<?=implode(",",$x)?>],
            datasets: [
                {
                label: 'Realisasi TB',
                data: [<?=implode(",", $y)?>],
                backgroundColor: 'rgba(12, 199, 132, 0.2)',
                borderWidth: 1
                },
                {
                label: 'Regresi Linier',
                data: [<?=implode(",", $regresi->all)?>],
                backgroundColor: 'rgba(255, 99, 132, 0.2)',
                borderWidth: 1
                },
            ]
        }
    });
</script>

<?php
echo "<textarea style='width:100%; height:300px; '>";
echo "X Variable : \n";
print_r($x);
echo "</textarea>";

echo "<textarea style='width:100%; height:300px; '>";
echo "Y Variable : \n";
print_r($y);
echo "</textarea>";

echo "<textarea style='width:100%; height:300px; '>";
echo "Hasil Analisis Regresi Linear : \n";
print_r($regresi->all);
echo "</textarea>";
?>

@endsection