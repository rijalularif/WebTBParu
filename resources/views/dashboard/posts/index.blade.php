@extends('dashboard.layouts.main') @section('container')
<div
    class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">My Posts</h1>
</div>

@if(session()->has('success'))
<div class="alert alert-success col-lg" role="alert">
    {{ session('success') }}
</div>
@endif

<a href="/dashboard/posts/create" class="btn btn-primary mb-3">
    Create new post
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
                        <th scope="col">#</th>
                        <th scope="col">Title</th>
                        <th scope="col">Category</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tfoot>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Title</th>
                        <th scope="col">Category</th>
                        <th scope="col">Action</th>
                    </tr>
                </tfoot>

                <tbody>
                    @foreach ($posts as $post)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $post->title }}</td>
                        <td>{{ $post->category->name }}</td>
                        <td>
                            <a href="/dashboard/posts/{{ $post->slug }}" class="btn btn-info btn-circle">
                                <i class="fas fa-eye"></i>
                            </a>

                            <a
                                href="/dashboard/posts/{{ $post->slug }}/edit"
                                class="btn btn-warning btn-circle">
                                <i class="fas fa-edit"></i>
                            </a>

                            <form
                                action="/dashboard/posts/{{ $post->slug }}"
                                method="post"
                                class="d-inline">

                                @method('delete') @csrf
                                <button
                                    class="btn btn-danger btn-circle"
                                    onclick="return  confirm('Are you sure?')">
                                    <i class="fas fa-trash"></i>
                                </button>
                            </form>

                        </td>
                    </tr>
                    @endforeach
                </tbody>

            </table>
        </div>

        @endsection