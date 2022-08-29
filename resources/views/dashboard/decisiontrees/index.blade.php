@extends('dashboard.layouts.main') @section('container')

<div
    class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Metode Decision Tree</h1>
</div>

@if(session()->has('success'))
<div class="alert alert-success" role="alert">
    {{ session('success') }}
</div>
@endif

<div class="container theme-showcase" role="main">


	<form action="/dashboard/decisiontrees" method="post">
		@csrf
		<div>
				@foreach ($gejala as $key => $val)
					<table class='table table-bordered'>
						<tr>
							<td class='pertanyaan'>
								<p>{{ $key+1 }}. Apakah pasien mengalami {{ $val }} ?</p>
							</td>
							<td class='pilihan'>
								<label class='radio-inline'>
									<input type='radio' name='radio{{ $key }}' value='1'> Ya
								</label>
								<label class='radio-inline'>
									<input type='radio' name='radio{{ $key }}' value='0'> Tidak
								</label>
							</td>
						</tr>
					</table>
				@endforeach
			
			<input type="submit"
			name="submit"
			value="Submit"
			class="btn btn-primary btn-lg btn-block"/>

		</div>
	</form>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

@endsection