
<jsp:include page="template/header.jsp"/>

    <main>
        <div class="container">
            <div class="row">
                <div class="offset-xs-2 col-xs-10 offset-md-4 col-md-4">
                    <form onsubmit="return false">
                        <h1>Sign up form</h1>
                        <div class="form-group">
                        <input type="email" id="email" class="form-control" placeholder="email@example.com">
                        </div>
                        <div class="form-group">
                            <input type="password" id="password" class="form-control" placeholder="Password">
                        </div>
                        <div class="form-group">
                            <input type="password" id="password2" class="form-control" placeholder="Password (confirm)">
                        </div>
                        <div class="form-group">
                            <button onclick="signUp()" class="btn btn-success">Sign up</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="row">
                <div class="offset-xs-2 col-xs-10 offset-md-4 col-md-4">
                    <form onsubmit="return false">
                        <h1>Sign in form</h1>
                        <div class="form-group">
                        <input type="email" id="emailSignin" class="form-control" placeholder="email@example.com">
                        </div>
                        <div class="form-group">
                            <input type="password" id="passwordSignin" class="form-control" placeholder="Password">
                        </div>
                        <div class="form-group">
                            <button onclick="signIn()" class="btn btn-success">Sign in</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="row">
            </div>
        </div>
    </main>

<jsp:include page="template/footer.jsp"/>


