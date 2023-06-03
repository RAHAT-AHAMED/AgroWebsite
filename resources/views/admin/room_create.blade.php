@extends('admin.layout.app')
@section('heading','Create Agriculture Instrument')
@section('content')
<div class="section-body">
    <form action="{{ route('admin_room_store') }}" method="post" enctype="multipart/form-data">
        @csrf
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <h4 class="text-center">Create Agriculture Instrument</h4>
                        @csrf
                        <div class="form-group mb-3">
                            <label class="form-label">Photo</label>
                            <input type="file" class="form-control" name="featured_photo">
                        </div>
                        <div class="form-group mb-3">
                            <label>Instrument Name</label>
                            <input type="text" class="form-control" name="name" placeholder="enter instrument name">
                        </div>
                         <div class="form-group mb-3">
                            <label>Description</label>
                            <textarea name="description" class="form-control snote" cols="30" rows="10">{{ old('description') }}</textarea>
                        </div>
                        <div class="form-group mb-3">
                            <label>Price</label>
                            <input type="text" class="form-control" name="price" value="{{ old('price') }}">
                        </div>
                        <div class="form-group mb-3">
                            <label>Amenities</label>
                            @php $i=0; @endphp
                            @foreach ($amenities as $amenity)
                                @php $i++; @endphp
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="{{ $amenity->id }}" id="defaultCheck{{ $i }}" name="arr_amenities[]">
                                    <label class="form-check-label" for="defaultCheck{{ $i }}">
                                        {{ $amenity->name }}
                                    </label>
                                </div>
                            @endforeach
                        </div>
                        <div class="form-group mb-3">
                            <label>Video ID</label>
                            <input type="text" class="form-control" name="video_id" value="{{ old('video_id') }}">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary">Create</button>
        </div>
    </form>
</div>
@endsection

@section('button')
    <div class="ml-auto">
        <a href="{{ route('admin_room_show') }}" class="btn btn-primary"><i class="fas fa-eye"></i> View</a>
    </div>
@endsection