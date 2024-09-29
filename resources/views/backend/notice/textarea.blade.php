<div class="form-group col-md-12">
    <label for="post_content">Description</label>
    <div class="pad">
        <textarea xid="compose-textarea" class="form-control compose-textarea-summernote" name="body">{{ !empty($post) ? $post->body : old('body') }}</textarea>
    </div>
</div>