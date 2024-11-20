<script src="js/login.js"></script>
<script>js/jquery.min.js</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script> 
    <script src="js/sweetalert.min.js"></script>

    <?php
    if(isset($_SESSION['status']) && $_SESSION['status'] !='')
    {
        ?>
        <script>
            swal({
        title: "<?php echo $_SESSION['status'];?>",
        icon:  "<?php echo $_SESSION['status_code'];?>",
        button: 'okay',
      });
            </script>
        <?php
        unset($_SESSION['status']);
    }
    ?>