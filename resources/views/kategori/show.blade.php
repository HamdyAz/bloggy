@extends('SBAdmin.component.admin')

@section('content')
    <h4> {{ $post->cat_title }} </h4>
    <p> {{ $post->cat_description }} </p>
@endsection