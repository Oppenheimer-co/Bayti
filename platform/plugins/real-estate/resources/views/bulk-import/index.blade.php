@extends(BaseHelper::getAdminMasterLayoutTemplate())

@section('content')
    <div class="row justify-content-center bulk-import">
        <div class="col-xxl-6 col-xl-8 col-lg-10 col-12">
            <div class="card">
                <div class="card-header">
                    <i class="fas fa-file-import"></i> {{ trans('plugins/real-estate::property.import_properties') }}
                </div>
                <div class="card-body">
                    <form
                        id="bulk-import-form"
                        action="{{ route('import-properties.store') }}"
                        method="post"
                    >
                        @csrf
                        <div class="mb-3">
                            <label
                                class="form-label required"
                                for="file"
                            >{{ trans('plugins/real-estate::import.choose_file') }}</label>
                            <input
                                class="form-control"
                                id="file"
                                name="file"
                                type="file"
                                required
                            >
                            <label
                                class="d-block mt-1 help-block"
                                for="input-group-file"
                            >
                                {{ trans('plugins/real-estate::import.choose_file_description', ['types' => implode(', ', config('plugins.real-estate.general.bulk-import.mimes', []))]) }}
                            </label>
                        </div>
                        <div class="mb-3 text-center p-2 border bg-light">
                            <a
                                class="download-template"
                                data-url="{{ route('import-properties.download-template') }}"
                                data-extension="csv"
                                data-filename="template_properties_import.csv"
                                data-downloading="<i class='fas fa-spinner fa-spin'></i> {{ trans('plugins/real-estate::import.downloading') }}"
                            >
                                <i class="fas fa-file-csv"></i>
                                {{ trans('plugins/real-estate::import.download_csv_file') }}
                            </a>
                            &nbsp; | &nbsp;
                            <a
                                class="download-template"
                                data-url="{{ route('import-properties.download-template') }}"
                                data-extension="xlsx"
                                data-filename="template_properties_import.xlsx"
                                data-downloading="<i class='fas fa-spinner fa-spin'></i> {{ trans('plugins/real-estate::import.downloading') }}"
                            >
                                <i class="fas fa-file-excel"></i>
                                {{ trans('plugins/real-estate::import.download_excel_file') }}
                            </a>
                        </div>
                        <div class="d-grid">
                            <button
                                class="btn btn-info"
                                type="submit"
                            >{{ trans('plugins/real-estate::property.import_properties') }}</button>
                        </div>
                    </form>
                </div>
            </div>
            <div
                class="alert my-3"
                style="display: none"
            ></div>
            <div
                class="widget meta-boxes mt-4"
                id="failures-list"
                style="display: none"
            >
                <div class="widget-title">
                    <span class="text-danger">{{ trans('plugins/real-estate::import.failures') }}</span>
                </div>
                <div class="widget-body">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">#{{ trans('plugins/real-estate::import.row') }}</th>
                                <th scope="col">{{ trans('plugins/real-estate::import.attribute') }}</th>
                                <th scope="col">{{ trans('plugins/real-estate::import.errors') }}</th>
                            </tr>
                        </thead>
                        <tbody></tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <div class="container mt-4">
        <div class="widget meta-boxes mt-4">
            <div class="widget-title">
                <h4 class="text-info">{{ trans('plugins/real-estate::import.template') }}</h4>
            </div>
            <div class="widget-body">
                <div class="table-responsive">
                    <table class="table table-striped table-bordered">
                        <thead>
                            <tr>
                                @foreach ($headings as $heading)
                                    <th>{{ $heading }}</th>
                                @endforeach
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($properties as $property)
                                <tr>
                                    @foreach ($headings as $key => $value)
                                        <td>{{ Arr::get($property, $key) }}</td>
                                    @endforeach
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="widget meta-boxes mt-4">
                <div class="widget-title">
                    <h4 class="text-info">{{ trans('plugins/real-estate::import.rules') }}</h4>
                </div>
                <div class="widget-body">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="row">{{ trans('plugins/real-estate::import.column') }}</th>
                                <th scope="col">{{ trans('plugins/real-estate::import.rules') }}</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($rules as $key => $value)
                                <tr>
                                    <th scope="row">{{ Arr::get($headings, $key) }}</th>
                                    <td>{{ $value }}</td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection
