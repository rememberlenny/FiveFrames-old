
function circleImageClick () {
  console.log('Running circleImageClick');
  $('.deletePhoto').hide();
  $('.photoPreview').click(function() {
      $(this).attr('disabled', 'true');
      $('#uploadCharacter').trigger('click');
  });
  $("#uploadCharacter").change(function(){
      $('.photoPreview').removeAttr('disabled');
      readURL(this);
  });
}
function readURL(input) {
  console.log('Running readURL');
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('.photoPreview').css('background', 'url(' + e.target.result + ')');
            $('.photoUpload, #uploadClick').hide();
        }
        $('.deletePhoto').show();

        reader.readAsDataURL(input.files[0]);
        console.log(reader);
        window.reader = reader;
    }
}
function deletePhoto () {
    $('.deletePhoto').click(function() {
        $('.deletePhoto').hide();
        $('#uploadCharacter').val('');
        $('.photoPreview').css('background', '');
        $('.photoUpload, #uploadClick').show();
    });
}
$(document).ready(function(){
  circleImageClick();
});

$('#photoinfo').bind("ajax:complete", function(data){
  window.dataBack = data;
  console.log(data);
  // do what you need, handle errors, etc
});
