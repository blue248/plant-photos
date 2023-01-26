document.addEventListener('DOMContentLoaded', function() {
  // 新規投稿・編集ページのフォームを取得
  const postForm = document.getElementById('new_post');

  // プレビューを表示するためのスペースを取得
  const previewList = document.getElementById('previews');

  // 新規投稿・編集ページのフォームがないならここで終了。
  if (!postForm) return null;
  console.log("preview.jsが読み込まれました");

  // input要素を取得
  const fileField = document.querySelector('input[type="file"][name="post_form[image]"]');

  // input要素で値の変化が起きた際に呼び出される関数
  fileField.addEventListener('change', function(e) {
    // 古いプレビューが存在する場合は削除（画像選択し直し対応）
    const alreadyPreview = document.querySelector('.preview');
    if (alreadyPreview) {
      alreadyPreview.remove();
    };
    // input要素で画像情報を取得・格納
    console.log(e.target.files[0]);
    const file = e.target.files[0];
    // 取得した画像のURLを生成
    const blob = window.URL.createObjectURL(file);
    // 画像を表示させるためのdiv要素を生成
    const previewWrapper = document.createElement('div');
    previewWrapper.setAttribute('class', 'preview');
    // 表示する画像を生成
    const previewImage = document.createElement('img');
    previewImage.setAttribute('class', 'preview-image');
    previewImage.setAttribute('src', blob);

    // 生成したHTMLの要素をブラウザに表示させる
    previewWrapper.appendChild(previewImage);
    previewList.appendChild(previewWrapper);
  });
});