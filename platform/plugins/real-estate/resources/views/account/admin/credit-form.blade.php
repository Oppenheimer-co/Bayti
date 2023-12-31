@if ($account->id)
    {!! Form::open(['url' => route('account.credits.add', $account->id)]) !!}
    <div class="form-group mb-3">
        <label class="control-label">{{ __('Number of credits') }}</label>
        <input
            class="form-control"
            name="credits"
            type="number"
            value="0"
            placeholder="{{ __('Number of credits') }}"
        >
    </div>
    <div class="form-group mb-3">
        <label class="control-label">{{ __('Action') }}</label>
        {!! Form::customSelect('type', Botble\RealEstate\Enums\TransactionTypeEnum::labels()) !!}
    </div>
    <div class="form-group mb-3">
        <label class="control-label">{{ __('Description') }}</label>
        <textarea
            class="form-control"
            name="description"
            placeholder="{{ __('Description') }}"
            rows="5"
        ></textarea>
    </div>
    {!! Form::close() !!}
@endif
