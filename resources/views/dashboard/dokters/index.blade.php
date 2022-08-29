@extends('dashboard.layouts.main') @section('container')

<div
    class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Data Nama Dokter</h1>
</div>

@if(session()->has('success'))
<div class="alert alert-success" role="alert">
    {{ session('success') }}
</div>
@endif

    <a href="/dashboard/dokters/create"
        class="btn btn-primary mb-3">
        Tambah dokter
    </a>

<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Data Dokter</h6>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Nama Dokter</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tfoot>
                    <tr>
                        <th>#</th>
                        <th>Nama Dokter</th>
                        <th>Action</th>
                    </tr>
                </tfoot>

                <tbody>

                @foreach ($dokters as $dokter)
                <tr>
                    <td>{{ $loop->iteration }}</td>
                    <td>{{ $dokter->nama_dokter }}</td>
                    <td>

                        <a href="/dashboard/dokters/{{ $dokter->id }}/edit"
                            class="btn btn-warning btn-circle">
                            <i class="fas fa-edit"></i>
                        </a>

                        <form action="/dashboard/dokters/{{ $dokter->id }}"
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