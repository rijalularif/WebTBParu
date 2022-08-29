@extends('dashboard.layouts.main') @section('container')

<div class = "d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Edit Nama Dokter</h1> 
</div>

<div class="table-responsive col-lg-8">
    
    <form class="mb-5"
        method="post"
        action="/dashboard/dokters/{{ $dokter->id }}">
        @method('put')
        @csrf 

        <div class = "mb-3">
            <label for="nama_dokter" class="form-label">Nama Dokter</label>
            <input type="text"
                class="form-control @error('nama_dokter') is-invalid @enderror"
                id="nama_dokter"
                name="nama_dokter"
                required
                autofocus
                value="{{ old('nama_dokter', $dokter->nama_dokter) }}">

                @error('nama_dokter')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
        </div>

        <button type="submit"
            class="btn btn-primary mt-5">
            Update Nama Dokter
        </button>

    </form>

</div>

@endsection