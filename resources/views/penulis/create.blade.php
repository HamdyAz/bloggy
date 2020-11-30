@extends('SBAdmin.component.admin')

@section('content')
<div class="ml-3 mt-3">
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title text-center">Add Storyteller</h3>
        </div>
        <!-- /.card-header -->
        <!-- form start -->
        <form role="form" action="/penulis" method="POST">
            @csrf
            <div class="card-body">

                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" class="form-control" id="name" name="name" value="{{ old ('name','')}}"
                        placeholder="Mr. Amazing">
                    @error('name')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                </div>

                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" id="email" name="email" value="{{ old ('email','')}}"
                        placeholder="writer@bloggy.com">
                    @error('email')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="cat_description">Password</label>
                    <input type="password" class="form-control" id="password" name="password"
                        value="{{ old ('password','')}}" placeholder="Enter Password">
                    @error('password')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                </div>

            </div>
            <!-- /.card-body -->

            <div class="card-footer">
                <button type="submit" class="btn btn-primary">Create</button>
            </div>
        </form>
    </div>
</div>
@endsection