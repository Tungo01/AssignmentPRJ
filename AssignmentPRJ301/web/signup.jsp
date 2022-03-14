<%-- 
    Document   : signup
    Created on : Mar 14, 2022, 4:45:44 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign up</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="signup-form">
                        <form action="signup" method="POST" class="mt-5 border p-4 bg-light shadow">
                            <h4 class="mb-5 text-secondary">Create Your Account</h4>
                            <div class="row">                                                               
                                <div class="mb-3 col-md-12">
                                    <label>Username<span class="text-danger">*</span></label>
                                    <input type="text" name="user" class="form-control" placeholder="Enter Username">
                                </div>
                                <div class="mb-3 col-md-12">
                                    <label>Password<span class="text-danger">*</span></label>
                                    <input type="password" name="pass" class="form-control" placeholder="Enter Password">
                                </div>
                                <div class="mb-3 col-md-12">
                                    <label>Confirm Password<span class="text-danger">*</span></label>
                                    <input type="password" name="repass" class="form-control" placeholder="Confirm Password">
                                </div>
                                <p class="text-danger">${mess}</p> 
                                <div class="col-md-12">
                                    <button class="btn btn-primary float-end">Signup Now</button>
                                </div>
                            </div>
                        </form>
                        <p class="text-center mt-3 text-secondary">If you have account, Please <a href="login.jsp">Login Now</a></p>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>    
    </body>
</html>
