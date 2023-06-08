<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.supermarket.sevenstar.dbconfig.DbConfiguration"%>
<%@page import="java.sql.Connection"%>

<jsp:include page="header.jsp"></jsp:include>


    <div class="container">
        <div class="row backcolorsearch align-items-center justify-content-md-center">
          <div class="col-12">
          
            <div class="container">
                <div class="row align-items-center justify-content-md-center">
                  <div class="col-4 center d-flex box">
                      <div class="my-4 color mr-3">
                          <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-search svgcolor" viewBox="0 0 16 16">
                            <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                          </svg>
                      </div>
                      <div class="searchtext">
                          <input class="searchtextbox" placeholder="City" type="text" id="search" name="search">
                      </div>
                  </div>
                  <div class="col-3 d-flex box p-0 row justify-content-center">
                    <div class="col-5 margin">
                        <div class="calendericon mr-3 left">
                            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-calendar3 svgcolor" viewBox="0 0 16 16">
                                <path d="M14 0H2a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2zM1 3.857C1 3.384 1.448 3 2 3h12c.552 0 1 .384 1 .857v10.286c0 .473-.448.857-1 .857H2c-.552 0-1-.384-1-.857V3.857z"/>
                                <path d="M6.5 7a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm-9 3a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm-9 3a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
                            </svg>
                        </div>
                        <p class="teee m-0"><b>From</b></p>
                        <p class="m-0 mt-1">2023/12/24</p>
                    </div>
                    <div class="col-5 margin">
                        <div class="search mr-3 left">
                            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-calendar3 svgcolor" viewBox="0 0 16 16">
                                <path d="M14 0H2a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2zM1 3.857C1 3.384 1.448 3 2 3h12c.552 0 1 .384 1 .857v10.286c0 .473-.448.857-1 .857H2c-.552 0-1-.384-1-.857V3.857z"/>
                                <path d="M6.5 7a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm-9 3a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm-9 3a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
                            </svg>
                        </div>
                        <p class="teee m-0"><b>To</b></p>
                        <p class="m-0 mt-1">2023/12/24</p>
                    </div>
                  </div>
                  <div class="col-4 d-flex box p-0 row justify-content-center">
                    <div class="col-7 margin">
                        <div class="calendericon mr-3 left">
                            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-people svgcolor" viewBox="0 0 16 16">
                            <path d="M15 14s1 0 1-1-1-4-5-4-5 3-5 4 1 1 1 1h8Zm-7.978-1A.261.261 0 0 1 7 12.996c.001-.264.167-1.03.76-1.72C8.312 10.629 9.282 10 11 10c1.717 0 2.687.63 3.24 1.276.593.69.758 1.457.76 1.72l-.008.002a.274.274 0 0 1-.014.002H7.022ZM11 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4Zm3-2a3 3 0 1 1-6 0 3 3 0 0 1 6 0ZM6.936 9.28a5.88 5.88 0 0 0-1.23-.247A7.35 7.35 0 0 0 5 9c-4 0-5 3-5 4 0 .667.333 1 1 1h4.216A2.238 2.238 0 0 1 5 13c0-1.01.377-2.042 1.09-2.904.243-.294.526-.569.846-.816ZM4.92 10A5.493 5.493 0 0 0 4 13H1c0-.26.164-1.03.76-1.724.545-.636 1.492-1.256 3.16-1.275ZM1.5 5.5a3 3 0 1 1 6 0 3 3 0 0 1-6 0Zm3-2a2 2 0 1 0 0 4 2 2 0 0 0 0-4Z"/>
                            </svg>
                        </div>
                        <p class="teee m-0"><b>5 adults, 5 children</b></p>
                        <p class="m-0 mt-1">1 Room</p>
                    </div>
                    <div class="col-3 center">
                        <button type="button" class="btn btn-primary">Search</button>
                    </div>
                  </div>
                  </div>
                </div>
                
              </div>
          </div>
        </div>
        <br>

	<div class="container">
	  <div class="row">
	
	   <!---------------categories--------------------->
	   <div class="col-md-3 col-8 col-sm-3 displaypic nav-links"> 
	     <div class="CATEFRAME  ">
	
	       <div class="CATE">Categories</div>
	       
	       <%
	       DbConfiguration dbConnection = DbConfiguration.getInstance();
           Connection conn = dbConnection.getConnection();
           
	       String sqlcomm = "SELECT * FROM tbl_category";
	       PreparedStatement stmt = conn.prepareStatement(sqlcomm);
	       
	       ResultSet rss = stmt.executeQuery();

	       	int rowss = 0;
			while(rss.next()){
			rowss++;	
			
			String cateid = rss.getString("id");
			
	       %>
	
	       	   <!-- Default drop-left button -->
		       <div class="CATEFRAME dropleft">
		
		         <div class="dropdown-divider dividercolor"></div>
		         <a class="dropdown-item overflow"  href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><% out.print(rss.getString("name")); %></a>
		         
		         <div class="dropdown-menu">
		         
		         <%
			       String sqlcom1 = "SELECT * FROM tbl_subcategory WHERE cate_id=?";
			       PreparedStatement stmt1 = conn.prepareStatement(sqlcom1);
			       
			     	//bind values
					stmt1.setString(1, cateid);
					
			       ResultSet rs1 = stmt1.executeQuery();
		
			       	int rows1 = 0;
					while(rs1.next()){
					rows1++;	
					
			       %>
		
			           <a class="dropdown-item"  href="searchresults.jsp?subcategory=<% out.print(rs1.getString("id")); %>"> <% out.print(rs1.getString("name")); %> </a>
			           <div class="dropdown-divider dividercolor"></div>
			           
			       <%
					}
				   %>
		
		         </div>
		         
		       </div>
	       
	       
	       <%
			}
			
			//if no post available.
			if(rowss < 1 ){
			%>
				<div class="alert alert-secondary" role="alert">
				  No posts yet!.
				</div>
			<%
			}
   			%> 
	
	     
	
	     </div>
	     
	   </div> <br/>
	
	
	 
	   <!----------------------carousel slide--------------------->
	
	   <div class="col-12 col-md-9 displaypic">
	           
	     <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
	       <ol class="carousel-indicators">
	         <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
	         <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
	         <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
	       </ol>
	       <div class="carousel-inner">
	         <div class="carousel-item active">
	           <img class="d-block w-100" src="imagers/imghom3.png" width="auto" height="80%" alt="First slide">
	         </div>
	         <div class="carousel-item">
	           <img class="d-block w-100" src="imagers/imghom2.png" width="auto" height="50%" alt="Second slide">
	         </div>
	         <div class="carousel-item">
	           <img class="d-block w-100" src="imagers/imghom1.png" width="auto" height="80%" alt="Third slide">
	         </div>
	       </div>
	       <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
	         <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	         <span class="sr-only">Previous</span>
	       </a>
	       <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
	         <span class="carousel-control-next-icon" aria-hidden="true"></span>
	         <span class="sr-only">Next</span>
	       </a>
	     </div>
	     <br/>
	
	     <!----------------------Flash Deals--------------------->
	     <p class="flashdeals">BEST MATCH </p>
	     <div class="dropdown-divider dealsdivider"></div><br/>
	
	       <div class="container-fluid ">
	         <div class="row itemrow">
	         
	         
				<%
					
					String sql = "SELECT * FROM tbl_item";
					PreparedStatement stmts = conn.prepareStatement(sql);
					
					ResultSet rs = stmts.executeQuery();
					
					int rows = 0;
					while(rs.next()){
						rows++;
						%>
							
						   <!----------------------Item view--------------------->
				           <div class="col-6 col-md-3  clo1">
				
				               <div class="class1">
				
				                  <div class="imgagebox1">
				                      <img  class="imgageitm" width="100%" height="100%" alt="N/A" src="imagers/<% out.print(rs.getString("id"));%>.png">
				                  </div>
				
				                  
				                  <div class="dropdown-divider dividercolor1"></div>
				
				                  <div class="itemname">
				                      <p> <% out.print(rs.getString("name") + " "  + rs.getString("description")); %></p>                 
				                  </div>
				
				                  <div class="itemdiscountprice justifycenter">
				                      <span id="<% out.print(rs.getString("discount")+rs.getString("id")+rs.getString("discount")); %>"></span>                 
				                  </div>
				
				                  <div class="itemprice mb-2 justifycenter">
				                    <del><span id="<% out.print(rs.getString("price")+rs.getString("id")+rs.getString("price")); %>"></span></del>              
				                  </div>
				
				                  <div class="itemaviewbtn justifycenter">  				                    
				                      <a type="submit" class="btn btn-warning viewbtn" href="itempage.jsp?id=<% out.print(rs.getString("id"));%>">View Details</a>
				                  </div>
				           
				
				               </div>
				
				           </div>
							
							<!-- -------currency format-------- -->
							<script> 	               	
				               document.getElementById("<% out.print(rs.getString("price")+rs.getString("id")+rs.getString("price")); %>").innerText =  "Rs. " + formatMoney(<% out.print(rs.getString("price")); %>);
				               document.getElementById("<% out.print(rs.getString("discount")+rs.getString("id")+rs.getString("discount")); %>").innerText =  "Rs. " + formatMoney(<% out.print(rs.getString("discount")); %>);
				            </script>
							
						<%
					}
					
					//if no post available.
					if(rows < 1 ){
					%>
						<div class="alert alert-secondary" role="alert">
						  No posts yet!.
						</div>
					<%
					}
		   			%>    
			         
	         
	           
	           
	             
	
	         </div>
	       </div>
	
	
	    </div>
	
	  </div>
	</div>






<jsp:include page="footer.jsp"></jsp:include>