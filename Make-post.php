        <?php 
        if(isset($_POST['create-post'])) 
        {
            $post_title = htmlentities($_POST['post-title']); 
            $post_cat_id = $_POST['cat-id'];
            $post_status = $_POST['post-status'];
            $post_content =htmlentities($_POST['post-content']); 

            if(empty($post_title) || empty($post_cat_id) || empty($post_status) || empty($post_content)) 
            {
             header("location:user_dashboard.php?q=4&error=emptyfields");
            } 
            $slug=slug($post_title);
            $post_created_date = date('j F Y');
            $post_updated_date= date('j F Y');
            $post_author = $user;
            if ($_FILES['post-image']['name']=='') 
            {
                $post_image = 'noimage.jpg';
            }
            else
            {
            $allowedExt=['jpg','png','jpeg'];
            $ext=explode('.', $_FILES['post-image']['name'])[1];
            $ext=strtolower($ext);
            if (!in_array($ext, $allowedExt)) 
            {
               header("location:user_dashboard.php?q=4&error=filenotsupported"); 
            }
            $imagename=explode('.', $_FILES['post-image']['name'])[0];
            $post_image = $imagename.mt_rand(10,1000).'.'.$ext;
            $post_temp_image = $_FILES['post-image']['tmp_name'];
            move_uploaded_file("{$post_temp_image}", "blog/img/{$post_image}");
            }
            $sql = "INSERT INTO posts (title, body, slug, cover, created_at, updated_at, author, cat_id, `status`) VALUES(:title, :post, :slug, :image, :createdate, :updatedate, :author, :catid, :status)";
            $stmt = $pdo->prepare($sql);
            $stmt->execute([
                ':title'=>$post_title,
                ':post'=>$post_content,
                ':slug'=>$slug,
                ':image'=>$post_image,
                ':createdate'=>$post_created_date,
                ':updatedate'=>$post_updated_date,
                ':author'=>$post_author,
                ':catid'=>$post_cat_id,
                ':status'=>$post_status
            ]);
            header("location:user_dashboard.php?q=4&success=1");
        }
        ?>
        <?php if($_GET['q']==4): ?>
        <div>
            <a href="user_dashboard.php?q=addcat" class="btn btn-primary rounded">ADD NEW CATEGORY</a>
        </div>
        <form action="user_dashboard.php?q=post" method="POST" enctype="multipart/form-data" class="mt-5">
            <fieldset>
                <legend><h2 class="section-title mt-3">Enter Post Details</h2></legend>
            <?php if(@$_GET['error']=='emptyfields'): ?>
              <div class="alert alert-danger">All fields must be filled!</div>
            <?php endif; ?>

            <?php if(@$_GET['error']=='filenotsupported'): ?>
              <div class="alert alert-danger">Image format not supported!</div>
            <?php endif; ?>

            <?php if (@$_GET['success']==1): ?>
                <div class="alert alert-success">your post was published successfully
                <?php echo "<script>
                    function managePosts(){
                      document.location.href='user_dashboard.php?q=5';
                    }
                    setTimeout(managePosts,3000);
                  </script>"; 
                ?>
                </div>
            <?php endif; ?>
            <div class="form-group">
                <label for="post-title">Post Title</label>
                <input name="post-title" type="text" class="form-control" id="post-title" placeholder="Enter post title">
            </div>
            <div class="form-group">
                <label for="category">Select Category</label>
                <select name="cat-id" class="form-control" id="category">
                    <?php
                        $sql1 = 'SELECT * FROM categories';
                        $stmt1 = $pdo->prepare($sql1);
                        $stmt1->execute();
                        while($category = $stmt1->fetch(PDO::FETCH_ASSOC)) {
                            $cat_id = $category['cat_id'];
                            $cat_title = $category['cat_title']; ?>
                            echo "<option value="<?php echo $cat_id; ?>"><?php echo $cat_title; ?></option>";
                        <?php }
                    ?>
                </select>
            </div>
            <div class="form-group">
                <label for="category">Post Status</label>
                <select name="post-status" class="form-control" id="category">
                    <option value="Published">Published</option>
                    <option value="Draft">Draft</option>
                </select>
            </div>
            <div class="form-group">
                <label for="post-image">Upload post image</label>
                <input name="post-image" type="file" class="form-control-file" id="post-image">
            </div>
            <div class="form-group">
                <label for="post-content">Post Content</label>
                <textarea  name="post-content" class="form-control" id="post-content" rows="10" placeholder="Your post content" ></textarea>
            </div>
            <button name="create-post" type="submit" class="btn btn-primary rounded">Submit</button>
        </fieldset>   
        </form>
        <?php endif; ?>