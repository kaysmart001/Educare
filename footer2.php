<div class="footer text-center">
  <h6 class="mb-0">Copyright
    <script>
      var CurrentYear = new Date().getFullYear()
      document.write(CurrentYear)
    </script> 
    © EDUCARE || All Rights Reserved.
  </h6>
</div>
    <script src="assets/js/jquery.js"></script>
    <script src="assets/DataTables/datatables.js"></script>
    <script src="assets/js/bootstrap.bundle.js"></script>
    <script src="assets/js/sidebar.js"></script>
    <script type="text/javascript">
      // Call the dataTables jQuery plugin
    $(document).ready(function() {
      $('#dataTable').DataTable();
    });

    $(document).ready(function() {
      $('#posts').DataTable();
    });

    tinymce.init({
      selector: 'textarea',
      plugins: 'a11ychecker advcode casechange formatpainter linkchecker autolink lists checklist media mediaembed pageembed permanentpen powerpaste table advtable tinycomments tinymcespellchecker',
      toolbar: 'a11ycheck addcomment showcomments casechange checklist code formatpainter pageembed permanentpen table',
      toolbar_mode: 'floating',
      tinycomments_mode: 'embedded',
      tinycomments_author: 'Author name'
    });


    function myFunction() {
    var input, filter, cards, cardContainer, h5, title, i, code;
    input = document.getElementById("myFilter");
    filter = input.value.toUpperCase();
    cardContainer = document.getElementById("myItems");
    cards = cardContainer.getElementsByClassName("course-item");
    for (i = 0; i < cards.length; i++) {
        title = cards[i].querySelector(".course-title");
        code = cards[i].querySelector(".card-body h6.card-title");
        if (title.innerText.toUpperCase().indexOf(filter) > -1 || code.innerText.toUpperCase().indexOf(filter) > -1) {
            cards[i].style.display = "";
        } else {
            cards[i].style.display = "none";
        }
    }
}
    </script>
  </body>
</html>