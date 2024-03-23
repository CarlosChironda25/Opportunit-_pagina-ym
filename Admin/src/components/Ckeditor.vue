<template>
    <div id="app">
        <ckeditor :editor="editor" :config="editorConfig" :model="editorData" />
    </div>
</template>

<script>
import CKEditor from '@ckeditor/ckeditor5-vue';
import ClassicEditor from '@ckeditor/ckeditor5-build-classic';

export default {
    name: 'App',
    components: {
        ckeditor: CKEditor.component
    },
     props: {
    value: String // Prop for binding the editor data
  },
    data() {
        return {
            editor: ClassicEditor,
            editorData: this.value,
            editorConfig: {
                // CKEditor config options
            }
        };
    },
    watch: {
        // Watch for changes in editorData and emit an input event
        editorData(newValue) {
            this.$emit('input', newValue);
        }
    }
};
</script>


<style>
.ck-editor__editable_inline {
    min-height: 200px;
}
</style>
