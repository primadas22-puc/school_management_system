            <nav class="navbar navbar-default mb-xl-5 mb-4">
                <div class="container-fluid">

                    <div class="navbar-header">
                        <button type="button" id="sidebarCollapse" class="btn btn-info navbar-btn">
                            <i class="fas fa-bars"></i>
                        </button>
                    </div>
                    <!-- Search-from -->
                    <form action="#" method="post" class="form-inline mx-auto search-form">
                        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" required="">
                        <button class="btn btn-style my-2 my-sm-0" type="submit">Search</button>
                    </form>
                    <!--// Search-from -->
                    <ul class="top-icons-agileits-w3layouts float-right">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                                aria-expanded="false">
                                <i class="far fa-bell"></i>
                                <span class="badge">4</span>
                            </a>
                           

                     
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button" data-toggle="dropdown" aria-haspopup="true"
                                aria-expanded="false">
                                <i class="far fa-user"></i>
                            </a>
                            <div class="dropdown-menu drop-3">
                                <div class="profile d-flex mr-o">
                                    <div class="profile-l align-self-center">
                                        <img src="images/profile.jpg" class="img-fluid mb-3" alt="Responsive image">
                                    </div>
                                    <div class="profile-r align-self-center">
                                        <?php 
                                include("connect.php");
                               $user= $_SESSION['user_id'];
                            $sql="Select id,name from teacher WHERE id= $user ";
                               $r=$conn->query($sql);
                                while($row=$r->fetch_assoc())
                                         {    
                                            $id=$row['id'];
                                            $name=$row['name'];

                                          }
         

                                 ?>
                                        <h3 class="sub-title-w3-agileits"><?php echo $id;  ?> </h3>
                                        <a href="mailto:info@example.com"><?php echo $name;  ?></a>
                                    </div>
                                </div>
                                
                                <a href="passChange.php" class="dropdown-item mt-3">
                                    <h4>
                                        <i class="fas fa-link mr-3"></i>Change Password</h4>
                                </a>
                               
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="?sign=out">Logout</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>