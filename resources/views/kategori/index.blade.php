@extends('SBAdmin.component.admin')

@section('content')
<div class="card">
  <div class="card-header">
    <h3 class="card-title text-center">Category Table</h3>
  </div>
  <!-- /.card-header -->
  <div class="card-body">
    @if(session('success'))
    <div class="alert alert-success">
      {{session('success')}}
    </div>
    @endif
    <a class="btn btn-primary mb-2" href="/kategori/create">Create New Category</a>
    <table class="table table-bordered">
      <thead>
        <tr>
          <th style="width: 10px">#</th>
          <th>Title</th>
          <th>Description</th>
          <th style="width: 40px">Action</th>
        </tr>
      </thead>
      <tbody>
        @forelse($kategori as $key => $post)
        <tr>
          <td> {{ $key + 1 }} </td>
          <td> {{ $post->cat_title }} </td>
          <td> {{ $post->cat_description }} </td>
          <td style="display: flex;">
            <a href="/kategori/{{$post->cat_id}}" class="btn btn-info btn-sm">show</a>
            <a href="/kategori/{{$post->cat_id}}/edit" class="btn btn-default btn-sm">edit</a>
            <form action="/kategori/{{$post->cat_id}}" method="post">
              @csrf
              @method('DELETE')
              <input type="submit" value="delete" class="btn btn-danger btn-sm">
            </form>
          </td>
        </tr>
        @empty
        <tr>
          <td colspan="4" align="center">No Posts</td>
        </tr>
        @endforelse
        {{--<tr>
                    <tr>
                      <td>2.</td>
                      <td>Clean database</td>
                      <td>
                        <div class="progress progress-xs">
                          <div class="progress-bar bg-warning" style="width: 70%"></div>
                        </div>
                      </td>
                      <td><span class="badge bg-warning">70%</span></td>
                    </tr>
                    <tr>
                      <td>3.</td>
                      <td>Cron job running</td>
                      <td>
                        <div class="progress progress-xs progress-striped active">
                          <div class="progress-bar bg-primary" style="width: 30%"></div>
                        </div>
                      </td>
                      <td><span class="badge bg-primary">30%</span></td>
                    </tr>
                    <tr>
                      <td>4.</td>
                      <td>Fix and squish bugs</td>
                      <td>
                        <div class="progress progress-xs progress-striped active">
                          <div class="progress-bar bg-success" style="width: 90%"></div>
                        </div>
                      </td>
                      <td><span class="badge bg-success">90%</span></td>
                    </tr>--}}
      </tbody>
    </table>
  </div>
  <!-- /.card-body -->
  {{--<div class="card-footer clearfix">
                <ul class="pagination pagination-sm m-0 float-right">
                  <li class="page-item"><a class="page-link" href="#">«</a></li>
                  <li class="page-item"><a class="page-link" href="#">1</a></li>
                  <li class="page-item"><a class="page-link" href="#">2</a></li>
                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                  <li class="page-item"><a class="page-link" href="#">»</a></li>
                </ul>
              </div>--}}
</div>
</div>
@endsection