@extends('dashboard.layouts.main') @section('container')

<div class = "d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Edit Data Pasien</h1> 
</div>

<div class="col-lg-8">
    
    <form class="mb-5"
        method="post"
        action="/dashboard/pasiens/{{ $pasien->id }}">
        @method('put')
        @csrf 

        <div class = "mb-3">
            <label for="nama" class="form-label">Nama Pasien</label>
            <input type="text"
                class="form-control @error('nama') is-invalid @enderror"
                id="nama"
                name="nama"
                required
                autofocus
                value="{{ old('nama', $pasien->nama) }}">

                @error('nama')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
        </div>

        
        <div class="mb-3">
            <label for="umur" class="form-label">Umur</label>
            <input
            type="text"
            class="form-control @error('umur') is-invalid @enderror"
            id="umur"
            name="umur"
            required
            value="{{ old('umur', $pasien->umur) }}">
            @error('umur')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>
        
        <div class="mb-3">
            <label for="kecamatan"class="form-label">Kecamatan</label>
            <select class="form-select" name="kecamatan_id">
                @foreach ($kecamatans as $kecamatan)
                @if(old('kecamatan_id', $pasien->kecamatan_id) == $kecamatan->id)
                <option value="{{ $kecamatan->id }}" selected>{{ $kecamatan->nama_kecamatan }}</option>
                @else
                <option value="{{ $kecamatan->id }}">{{ $kecamatan->nama_kecamatan }}</option>
                @endif
                @endforeach
            </select>
        </div>
        
        <div class="mb-3">
            <label for="jk"class="form-label">Jenis Kelamin</label>
            <select class="form-select" name="jk_id">
                @foreach ($jks as $jk)
                    @if(old('jk_id', $pasien->jk_id) == $jk->id)
                        <option value="{{ $jk->id }}" selected>{{ $jk->nama_jk }}</option>
                    @else
                        <option value="{{ $jk->id }}">{{ $jk->nama_jk }}</option>
                    @endif
                @endforeach
            </select>
        </div>
        
        <div class="mb-3">
            <label for="jenistb"class="form-label">Jenis TB</label>
            <select class="form-select" name="jenistb_id">
                @foreach ($jenistbs as $jenistb)
                    @if(old('jenistb_id', $pasien->jenistb_id) == $jenistb->id)
                        <option value="{{ $jenistb->id }}" selected>{{ $jenistb->nama_jenistb }}</option>
                    @else
                        <option value="{{ $jenistb->id }}">{{ $jenistb->nama_jenistb }}</option>
                    @endif
                @endforeach
            </select>
        </div>

        <div class="mb-3">
            <label for="dokter"class="form-label">Dokter</label>
            <select class="form-select" name="dokter_id">
                @foreach ($dokters as $dokter)
                    @if(old('dokter_id', $pasien->dokter_id) == $dokter->id)
                        <option value="{{ $dokter->id }}" selected>{{ $dokter->nama_dokter }}</option>
                    @else
                        <option value="{{ $dokter->id }}">{{ $dokter->nama_dokter }}</option>
                    @endif
                @endforeach
            </select>
        </div>

        <div class="mb-3">
            <label for="diagnosa" class="form-label">Diagnosa</label>
            @error('diagnosa')
                <p class="text-danger">{{ $message }}</p>
            @enderror
            <input id="diagnosa"
                type="hidden"
                name="diagnosa"
                value="{{ old('diagnosa', $pasien->diagnosa) }}">
            <trix-editor input="diagnosa"></trix-editor>
        </div>

        <button type="submit"
            class="btn btn-primary mt-5">
            Update Data Pasien
        </button>

    </form>
</div>

<script>
    document.addEventListener('trix-file-accept', function (e) {
        e.preventDefault();
    })
</script>

<script src="/js/trix.js"></script>
@endsection