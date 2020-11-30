@extends('SBAdmin.component.admin')

@section('content')
<div class="ml-3 mt-3">
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title text-center">Edit Writer Data</h3>
        </div>
        <!-- /.card-header -->
        <!-- form start -->
        <form role="form" action="/penulis/{{$editQ->id}}" method="POST">
            @csrf
            @method('PUT')
            <div class="card-body">

                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" class="form-control" id="name" name="name" value="{{ old ('name',$editQ->name)}}"
                        placeholder="Enter Name">
                    @error('name')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                </div>

                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" id="email" name="email"
                        value="{{ old ('email',$editQ->email)}}" placeholder="writer@bloggy.com">
                    @error('email')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                </div>

            </div>
            <!-- /.card-body -->

            <div class="card-footer">
                <button type="submit" class="btn btn-primary">Edit User</button>
            </div>
        </form>
    </div>
</div>
@endsection