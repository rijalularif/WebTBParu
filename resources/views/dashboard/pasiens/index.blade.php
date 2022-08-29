@extends('dashboard.layouts.main') @section('container')

<div
    class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Data Pasien</h1>
</div>

@if(session()->has('success'))
<div class="alert alert-success" role="alert">
    {{ session('success') }}
</div>
@endif

    <a href="/dashboard/pasiens/create" class="btn btn-primary mb-3">
        Tambah Data Pasien
    </a>

    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Data Pasien</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Nama</th>
                            <th>Jenis Kelamin</th>
                            <th>Umur</th>
                            <th>Kecamatan</th>
                            <th>Jenis TB</th>
                            <th>Diagnosa</th>
                            <th>Dokter</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>#</th>
                            <th>Nama</th>
                            <th>Jenis Kelamin</th>
                            <th>Umur</th>
                            <th>Kecamatan</th>
                            <th>Jenis TB</th>
                            <th>Diagnosa</th>
                            <th>Dokter</th>
                            <th>Action</th>
                        </tr>
                    </tfoot>
                    <tbody>
                        @foreach ($pasiens as $pasien)
                        <tr>
                            <td>{{ $loop->iteration }}</td>
                            <td>{{ $pasien->nama }}</td>
                            <td>{{ $pasien->jk->nama_jk }}</td>
                            <td>{{ $pasien->umur }}</td>
                            <td>{{ $pasien->kecamatan->nama_kecamatan }}</td>
                            <td>{{ $pasien->jenistb->nama_jenistb }}</td>
                            <td>{!! $pasien->diagnosa !!}</td>
                            <td>{{ $pasien->dokter->nama_dokter }}</td>
                            <td>
                                <a href="/dashboard/pasiens/{{ $pasien->id }}/edit"
                                    class="btn btn-warning btn-circle">
                                    <i class="fas fa-edit"></i>
                                </a>
                                <form action="/dashboard/pasiens/{{ $pasien->id }}"
                                    method="post"
                                    class="d-inline">
            
                                    @method('delete')
                                    @csrf
                                    <button class="btn btn-danger btn-circle"
                                        onclick="return  confirm('Are you sure?')" >
                                        <i class="fas fa-trash"></i>
                                    </button>
                                </form>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>

@endsection