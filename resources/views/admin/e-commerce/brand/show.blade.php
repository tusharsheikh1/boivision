@extends('layouts.admin.e-commerce.app')

@section('title', 'Brand Information')

@section('content')

<!-- Content Header (Page header) -->
<section class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1>Brand Information</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="{{routeHelper('dashboard')}}">Home</a></li>
                    <li class="breadcrumb-item active">Show Brand</li>
                </ol>
            </div>
        </div>
    </div><!-- /.container-fluid -->
</section>

<!-- Main content -->
<section class="content">

    <!-- Default box -->
    <div class="card">
        <div class="card-header">
            
            <div class="row">
                <div class="col-sm-6">
                    <h3 class="card-title">Brand Information</h3>
                </div>
                <div class="col-sm-6 text-right">
                    <a href="{{routeHelper('brand/'.$brand->id.'/edit')}}" class="btn btn-info">
                        <i class="fas fa-edit"></i>
                        Edit
                    </a>
                    <a href="{{routeHelper('brand')}}" class="btn btn-danger">
                        
                        <i class="fas fa-long-arrow-alt-left"></i>
                        Back to List
                    </a>
                </div>
            </div>
        </div>
        <div class="card-body">
            <table class="table table-bordered table-hover">
                <tbody>
                    <tr>
                        <th>Cover Photo</th>
                        <td>
                            @if ($brand->cover_photo == 'default.png')
                                <img src="https://via.placeholder.com/150" alt="Cover Photo" width="150px" height="150px"> 
                            @else
                                <img src="/uploads/brand/{{$brand->cover_photo}}" alt="Cover Photo" width="150px" height="150px">
                            @endif
                        </td>
                    </tr>
                    <tr>
                        <th>Name</th>
                        <td>{{$brand->name}}</td>
                    </tr>
                    <tr>
                        <th>Description</th>
                        <td>{{$brand->description}}</td>
                    </tr>
                    <tr>
                        <th>Status</th>
                        <td>
                            @if ($brand->status)
                                <span class="badge badge-success">Active</span>
                            @else
                                <span class="badge badge-danger">Disable</span>
                            @endif    
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <!-- /.card -->

</section>
<!-- /.content -->

@endsection