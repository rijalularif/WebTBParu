@extends('dashboard.layouts.main') @section('container')

<div class = "d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Edit Nama Kecamatan</h1> 
</div>

<div class="table-responsive col-lg-8">
    
    <form class="mb-5"
        method="post"
        action="/dashboard/kecamatans/{{ $kecamatan->id }}"
        enctype="multipart/form-data">
        @method('put')
        @csrf 

        <div class = "mb-3">
            <label for="nama_kecamatan" class="form-label">Nama Kecamatan</label>
            <input type="text"
                class="form-control @error('nama_kecamatan') is-invalid @enderror"
                id="nama_kecamatan"
                name="nama_kecamatan"
                required
                autofocus
                value="{{ old('nama_kecamatan', $kecamatan->nama_kecamatan) }}">

                @error('nama_kecamatan')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
        </div>

        <div class="mb-3">
            <label for="geojson" class="form-label">GeoJSON</label>

            <input type="hidden"
            name="oldGeojson"
            value="{{ $kecamatan->geojson }}">

            @if($kecamatan->geojson)
                <img src="{{ asset('storage/' . $kecamatan->geojson) }}"
                class="img-preview img-fluid mb-3 col-sm-5 d-block">
            @else
                <img class="img-preview img-fluid mb-3 col-sm-5">
            @endif

            <input class="form-control @error('geojson') is-invalid @enderror"
            type="file"
            id="geojson"
            name="geojson">
            
            @error('geojson')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
            @enderror
        </div>

        <button type="submit"
            class="btn btn-primary mt-5">
            Update Nama Kecamatan
        </button>

    </form>

</div>

@endsection