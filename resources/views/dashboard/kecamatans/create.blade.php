@extends('dashboard.layouts.main') @section('container')

<div class = "d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Tambah Kecamatan</h1> 
</div>

<div class="col-lg-4">
    
    <form class="mb-5"
    method="post"
    enctype="multipart/form-data"
    action="/dashboard/kecamatans">
    @csrf 
        <div class = "mb-3">
            <label for="nama_kecamatan" class="form-label">
                Nama Kecamatan
            </label>
            <input type="text"
                class="form-control @error('nama_kecamatan') is-invalid @enderror"
                id="nama_kecamatan"
                name="nama_kecamatan"
                required
                autofocus
                value="{{ old('nama_kecamatan') }}">

                @error('nama_kecamatan')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
        </div>

        <div class="mb-3">
            <label for="geojson" class="form-label">Geojson</label>
            <img class="img-preview img-fluid mb-3 col-sm-5">
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
            Tambah Kecamatan
        </button>

    </form>

</div>

@endsection