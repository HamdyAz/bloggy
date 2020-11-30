@extends('SBAdmin.component.admin')

@section('content')
<div class="ml-3 mt-3">
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title">Create New Categori</h3>
        </div>
        <!-- /.card-header -->
        <!-- form start -->
        <form role="form" action="/kategori" method="POST">
            @csrf
            <div class="card-body">
                
                <div class="form-group">
                    <label for="cat_title">Title</label>
                    <input type="text" class="form-control" id="cat_title" name="cat_title" value="{{ old ('cat_title','')}}" placeholder="Enter Title">
                    @error('cat_title')
                        <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                </div>
                
                <div class="form-group">
                    <label for="cat_description">Description</label>
                    <input type="text" class="form-control" id="cat_description" name="cat_description" value="{{ old ('cat_description','')}}" placeholder="Enter Description">
                    @error('cat_description')
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