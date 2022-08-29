@extends('layouts.main') @section('container')

<h1 class="mb-5 text-center">{{ $title }}</h1>

<div class="album py-5 bg-light">
    <div class="container">

        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-2 g-3">
            <div class="col py-0 container">
                <div class="mapouter">
                    <div class="gmap_canvas">
                        <iframe
                            src="https://maps.google.com/maps?q=RSUD%20Cut%20Meutia%20Kab.%20Aceh%20Utara&amp;t=k&amp;z=17&amp;ie=UTF8&amp;iwloc=&amp;output=embed"
                            name="lokasi"
                            title="lokasi"
                            id="gmap_canvas"
                            frameborder="0"
                            scrolling="no"
                            style="width: 600px; height: 400px;"></iframe>

                        <style>
                            .mapouter {
                                position: relative;
                                text-align: right;
                                height: 400px;
                                width: 600px;
                            }
                        </style>

                        <style>
                            .gmap_canvas {
                                overflow: hidden;
                                background: none!important;
                                height: 400px;
                                width: 600px;
                            }
                        </style>
                    </div>
                </div>
            </div>

            <div class="col py-0 text-center container">
                <div class="row py-lg-5">
                    <div class="col-lg-10 col-md-1 mx-auto">
                        <h1 class="fw-light">RSU Cut Meutia Aceh Utara</h1>
                        <p class="lead text-muted">adalah rumah sakit negeri yang berada di daerah Aceh Utara.
                            Rumah sakit umum Cut Meutia telah ada sejak awal proklamasi kemerdekaan R.I yaitu merupakan normalisasi dari ex.
                            Rumah sakit perkebunan milik belanda pada zaman penjajahan dan dialihkan menjadi rumah sakit milik pemerintah RI.
                        </p>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

@endsection