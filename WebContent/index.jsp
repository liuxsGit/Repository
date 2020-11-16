<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1,shrink-to-fit=no">
<link href="bootstrap/css/bootstrap.css" rel="stylesheet">
<script type="text/javascript" src="bootstrap/js/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap/js/popper.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
</head>
<body>


	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <a class="navbar-brand" href="#">Navbar</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown</a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="mysession.jsp">My session</a>
              <a class="dropdown-item" href="#">Another action</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="#">Something else here</a>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="login.jsp">login/register</a>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled" href="#">Disabled</a>
          </li>
          
        </ul>
        
        <form class="form-inline my-2 my-lg-0" method="post" action="user-search">
          <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name="search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
        
      </div>
    </nav>
    
    <div class="container mt-3">
      <div class="row">
        <div class="col-12">
          <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleControls" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleControls" data-slide-to="1"></li>
              <li data-target="#carouselExampleControls" data-slide-to="2"></li>
              <li data-target="#carouselExampleControls" data-slide-to="3"></li>
              <li data-target="#carouselExampleControls" data-slide-to="4"></li>
              <li data-target="#carouselExampleControls" data-slide-to="5"></li>
              <li data-target="#carouselExampleControls" data-slide-to="6"></li>
            </ol>
            <!-- ol 里面的li是轮播的结构主体，carousel-inner是轮播对象-->
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img class="d-block w-100" src="images/info3.jpg" alt="First slide">
                <div class="carousel-caption d-none d-md-block">
                  <h5>Item 1 Heading</h5>
                  <p>Item 1 Description</p>
                </div>
              </div>
              <div class="carousel-item">
                <img class="d-block w-100" src="images/info1.jpg" alt="Second slide">
                <div class="carousel-caption d-none d-md-block">
                  <h5>Item 2 Heading</h5>
                  <p>Item 2 Description</p>
                </div>
              </div>
              <div class="carousel-item">
                <img class="d-block w-100" src="images/info2.jpg" alt="Third slide">
                <div class="carousel-caption d-none d-md-block">
                  <h5>Item 3 Heading</h5>
                  <p>Item 3 Description</p>
                </div>
              </div>
              <div class="carousel-item">
                <img class="d-block w-100" src="images/info3.jpg" alt="Third slide">
                <div class="carousel-caption d-none d-md-block">
                  <h5>Item 3 Heading</h5>
                  <p>Item 3 Description</p>
                </div>
              </div>
              <div class="carousel-item">
                <img class="d-block w-100" src="images/info4.jpg" alt="Third slide">
                <div class="carousel-caption d-none d-md-block">
                  <h5>Item 3 Heading</h5>
                  <p>Item 3 Description</p>
                </div>
              </div>
              <div class="carousel-item">
                <img class="d-block w-100" src="images/info5.jpg" alt="Third slide">
                <div class="carousel-caption d-none d-md-block">
                  <h5>Item 3 Heading</h5>
                  <p>Item 3 Description</p>
                </div>
              </div>
              <div class="carousel-item">
                <img class="d-block w-100" src="images/info6.jpg" alt="Third slide">
                <div class="carousel-caption d-none d-md-block">
                  <h5>Item 3 Heading</h5>
                  <p>Item 3 Description</p>
                </div>
              </div>
            </div>
            
            <!-- carousel-control-prev/next是两个轮播对象的控制切换按钮 -->
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
            </a>
            
          </div>
        </div>
      </div>
      <hr>
    </div>
    
    
    <section>
      <div class="container">
        <div class="row">
          <!-- 好房源找更多 -->
          <div class="col-lg-4 col-md-6 col-12">
            <ul class="list-unstyled">
              <li class="media">
                <img class="mr-3 rounded-circle img-responsive img-fluid" style="height: 200px; width: 50%; display: block;" src="images/p-3.jpg" alt="Generic placeholder image">
                <div class="media-body">
                  <h5 class="mt-0 mb-1">Jack ma</h5>
                  <p class="mb-0">He is currently a director of SoftBank, chairman of the China Board of the Nature Conservancy and a member of its global board of Directors. </p>
                </div>
              </li>
            </ul> 
          </div>
          
          <div class="col-lg-4 col-md-6 col-12">
            <ul class="list-unstyled">
              <li class="media">
                <img class="mr-3 rounded-circle img-responsive img-fluid" style="height: 200px; width: 50%; display: block;" src="images/p-1.jpg" alt="Generic placeholder image">
                <div class="media-body ">
                  <h5 class="mt-0 mb-1">Header 1</h5>
                  <p class="mb-0">Be familiar with all departments, services and business of the hotel.Under the leadership of the general manager of the hotel, unify the thoughts and fully understand the spirit of corporate culture</p>
                </div>
              </li>
            </ul>
          </div>
          
          <div class="col-lg-4 d-md-none d-lg-block">
            <ul class="list-unstyled">
              <li class="media">
                <img class="mr-3 rounded-circle img-responsive img-fluid" style="height: 200px; width: 50%; display: block;" src="images/p-2.jpg" alt="Generic placeholder image">
                <div class="media-body">
                  <h5 class="mt-0 mb-1">Header 2</h5>
                  <p class="mb-0">Be familiar with all departments, services and business of the hotel.Under the leadership of the general manager of the hotel, unify the thoughts and fully understand the spirit of corporate culture</p>
                </div>
              </li>
            </ul>
          </div>
          
        </div>
      </div>
    </section>
    <hr>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-12">
          <div class="row">
            <div class="col-sm-6 col-12">
              <div class="card">
                <img class="card-img-top" src="images/rent1-1.jpg" alt="Card image cap">
                <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">东华理工大学 精装180平 三室两厅 顶楼享尽东华新鲜空气美景 2800元/月 坐北朝南 位于青山湖和新建的模糊交叉地带.... <br>详尽咨询：刘先生 15070424746 </p>
                  <a href="housedetails.jsp" class="btn btn-primary">Go somewhere</a>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-12">
              <div class="card">
                <img class="card-img-top" src="images/rent2-1.jpg" alt="Card image cap">
                <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">东华理工大学 精装180平 三室两厅 顶楼享尽东华新鲜空气美景 2800元/月 坐北朝南 位于青山湖和新建的模糊交叉地带.... <br>详尽咨询：刘先生 15070424746 </p>
                  <a href="housedetails.jsp" class="btn btn-primary">Go somewhere</a>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-sm-6 col-12">
              <div class="card">
                <img class="card-img-top" src="images/rent3-1.jpg" alt="Card image cap">
                <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">东华理工大学 精装180平 三室两厅 顶楼享尽东华新鲜空气美景 2800元/月 坐北朝南 位于青山湖和新建的模糊交叉地带.... <br>详尽咨询：刘先生 15070424746 </p>
                  <a href="housedetails.jsp" class="btn btn-primary">Go somewhere</a>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-12">
              <div class="card">
                <img class="card-img-top" src="images/rent4-1.jpg" alt="Card image cap">
                <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">东华理工大学 精装180平 三室两厅 顶楼享尽东华新鲜空气美景 2800元/月 坐北朝南 位于青山湖和新建的模糊交叉地带.... <br>详尽咨询：刘先生 15070424746 </p>
                  <a href="housedetails.jsp" class="btn btn-primary">Go somewhere</a>
                </div>
              </div>
            </div>
          </div>
        </div>
        <hr>
        <div class="col-lg-4 col-12">
          <div class="row mx-0">
          
            <div class="col-12 card bg-light mx-auto">
              <h3 class="text-center card-header">Find Your Home</h3>
              
              <form class="card-body">
              
                <div class="form-group row">
                  <label for="location1" class="col-form-label">Location</label>
                  <select class="form-control" name="location" id="location1">
                    <option value="">Any</option>
                    <option value="">1</option>
                    <option value="">2</option>
                  </select>
                </div>
                
                <div class="form-group row">
                  <label for="pricefrom" class="col-form-label">Price From</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <div class="input-group-text" id="basic-addon1">$</div>
                    </div>
                    <input type="text" class="form-control" id="pricefrom" aria-describedby="basic-addon1">
                  </div>
                </div>
                
                <div class="form-group row">
                  <label for="priceto" class="col-form-label">Price To</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <div class="input-group-text" id="basic-addon2">$</div>
                    </div>
                    <input type="text" class="form-control" id="priceto" aria-describedby="basic-addon2">
                  </div>
                </div>
                <p class="text-center"><a href="#" class="btn btn-danger" role="button">Search </a></p>
                
              </form>
            </div>
            
            
            <div class="col-12">
              <h3 class="text-center">Agents</h3>
              <hr>
              <div class="media mb-2">
                <img class="mr-3 rounded-circle img-responsive img-fluid" style="height:100px; width: 30%; display: block;" src="images/p-4.jpg" alt="Generic placeholder image">
                <div class="media-body">
                  <h5 class="mt-0">John Doe</h5>
                  <abbr title="Phone">P:</abbr> 15070424746 <a href="mailto:#">first.last@example.com</a>
                </div>
              </div>
              <div class="media mb-2">
                <img class="mr-3 rounded-circle img-responsive img-fluid" style="height: 100px; width: 30%; display: block;" src="images/p-5.jpg" alt="Generic placeholder image">
                <div class="media-body">
                  <h5 class="mt-0">John Doe</h5>
                  <abbr title="Phone">P:</abbr> 15374342708 <a href="mailto:#">first.last@example.com</a>
                </div>
              </div>
              <div class="media mb-2">
                <img class="mr-3 rounded-circle img-responsive img-fluid" style="height: 100px; width: 30%; display: block;" src="images/p-6.jpg" alt="Generic placeholder image">
                <div class="media-body">
                  <h5 class="mt-0">John Doe</h5>
                  <abbr title="Phone">P:</abbr> 17679080468 <a href="mailto:#">first.last@example.com</a>
                </div>
              </div>  
            </div>
          </div>
        </div>
      </div>
    </div>
    <hr>
    <section>
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-12">
            <h3>New Properties</h3>
            <hr>
            
            <div class="row">
              <div class="col-4">
                <div class="text-center"> <img src="images/rent1-1.jpg" class=" img-responsive img-fluid" style="height: 150px; width: 100%; display: block;" alt="Thumbnail Image 1"> </div>
              </div>
              <div class="col-4">
                <div class="text-center"> <img src="images/rent1-2.jpg" class=" img-responsive img-fluid" style="height: 150px; width: 100%; display: block;" alt="Thumbnail Image 1"></div>
              </div>
              <div class="col-4">
                <div class="text-center"> 
                	<img src="images/rent1-3.jpg" class=" img-responsive img-fluid" style="height: 150px; width: 100%; display: block;" alt="Thumbnail Image 1">
                </div>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-4">
                <div class="text-center"> <img src="images/rent2-1.jpg" class=" img-responsive img-fluid" style="height: 150px; width: 100%; display: block;" alt="Thumbnail Image 1"> </div>
              </div>
              <div class="col-4">
                <div class="text-center"> <img src="images/rent3-1.jpg" class=" img-responsive img-fluid" style="height: 150px; width: 100%; display: block;" alt="Thumbnail Image 1"></div>
              </div>
              <div class="col-4">
                <div class="text-center"> 
                	<img src="images/rent4-1.jpg" class=" img-responsive img-fluid" style="height: 150px; width: 100%; display: block;" alt="Thumbnail Image 1">
                </div>
              </div>
            </div>
          </div>
          
          <div class="col-md-6 col-12">
            <h3>Our Services</h3>
            <nav>
              <div class="nav nav-tabs" id="nav-tab" role="tablist">
                <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">service duty</a>
                <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">copyright</a>
                <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">protocol</a>
              </div>
            </nav>
            <div class="tab-content" id="nav-tabContent">
              <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
               
                <p>1. Clean and check room DAO and supplementary supplies.

					2. Provide the guests with a pleasant, smiling, helpful and sincere attitude.
					
					3. Use and maintenance of cleaning products
					
					4. Check guest's belongings and valuables in the room
					
					5. Ensure the safety of the work area.</p>
              </div>
              <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                
                <p>The copyright of all articles and other materials (such as example codes and pictures) published and reproduced by Anjuke website users shall belong to the original author. Anjuke users shall guarantee that the contents uploaded, reproduced and published will not infringe the copyright of others, and the right to use this website shall be reserved. Any other unit or individual shall obtain the consent of the original author and indicate that the article published on Anjuke website shall be reproduced from anjuke Website. This website reserves the right to pursue legal liability for illegal transfer.</p>
              </div>
              <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
                
                <p>In order to use Anjuke's services, you shall read and abide by this Anjuke User Service Agreement (hereinafter referred to as "This Agreement"). This Agreement is a legal agreement between User and Anjuke, and it is a general term when user registers anjuke account and USES the services of Anjuke platform or directly USES the services of Anjuke Platform without the registration procedure. You are requested to carefully read and fully understand the contents of the terms of this Agreement, especially the terms of exemption or limitation of liability, jurisdiction and applicable law. Restrictions and exclusions may be highlighted in bold or underlined. If you do not agree with the provisions of this Agreement, you shall immediately stop the registration process or stop using the Services of Anjuke Platform; If you continue to visit and use the Services of Anjuke Platform, you shall be deemed to have confirmed and fully agreed to the provisions of this Agreement.</p>
              </div>
            </div>
          </div>
          
        </div>
      </div>
    </section>
    <hr>
    <div class="container">
      <div class="row">
        <div class="col-md-8 col-12">
          <div class="row">
            <div class="col-lg-6 col-12">
              <h3>About Us</h3>
              <hr>
              <p>Anjuke is the leading real estate information service platform in China. Founded in 2007, anjuke has always been committed to the corporate vision of creating a "life service platform trusted by everyone". The business of the company covers new houses, second-hand houses, rental houses, commercial real estate, overseas real estate, decoration and other fields. It not only provides users with secure, reliable and convenient housing search services, but also meets the efficient network promotion demands of developers and brokers. Users can enjoy one-stop professional housing rental and sales services through Anjuke website, App, mobile web version, Pad web version, etc.<p>
            </div>
            <div class="col-lg-6 col-12">
              <h3>Latest News</h3>
              <hr>
              <div>
            <div class="media">
              <div class="media-body">
                <h4 class="mt-0 mb-1">Sold out</h4>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum, quod temporibus veniam deserunt deleniti accusamus voluptatibus at illo sunt quisquam. </div>
             </div>
            <div class="media">
              <div class="media-body">
                <h4 class="mt-0 mb-1">Sold out</h4>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo, iure nemo earum quae aliquid animi eligendi rerum rem porro facilis. </div>
            </div>
          </div>
            </div>
          </div>
        </div>
        <div class="col-md-4 col-12 mt-md-0 mt-2">
          <h3>Contact Us</h3>
          <hr>
          <address>
            <strong>Social marketing Collaboration</strong><br>
            Indian Treasure Link<br>
            Quitman, WA, 99110-0219<br>
            <abbr title="Phone">P:</abbr> 400-620-9008
          </address>
          <address>
            <strong>Market cooperation</strong><br>
            <a href="mailto:#">tangchuan@58.com</a>
          </address>
        </div>
      </div>
    </div>
    <footer class="text-center">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <p>Copyright © MyWebsite. All rights reserved.</p>
          </div>
        </div>
      </div>
    </footer>
	
	
	
</body>
</html>