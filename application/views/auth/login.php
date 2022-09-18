  <div class="container">
    <!-- Outer Row -->
    <div class="row justify-content-center mt-5">

      <div class="col-lg-8">
      
        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row ">
              <div class="col-lg-5 justify-content-center">
                <div class="p-5">
                  <div class="card-image card-logo text-center">
                      <img src="https://abdullahlabuapi.files.wordpress.com/2018/03/61.jpg?w=1000" alt="workingspace"  width="100">
                  </div>
                  <div class="text-center">
                    <h6 class="text-gray-900">Asrama Putra </h6>
                    <h4 class="text-gray-900"><b>PP AL-IISHLAHUDDINY</b></h4>
                  </div>
                </div>
                
              </div>
              <div class="col-lg-7">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4"><?=$title?></h1>
                  </div>
                  <?= $this->session->flashdata('message');?>
                  <form class="user" method="post" action="<?=base_url('auth')?>">
                    <div class="form-group">
                      <input type="text" class="form-control form-control-user" id="email"placeholder="Alamat Email email..." name="email" value="<?=set_value('email');?>">
                      <?=form_error('email','<small class="text-danger pl-3">','</small>');?>
                    </div>
                    <div class="form-group">
                      <input type="password" class="form-control form-control-user" id="password" placeholder="Password" name="password">
                      <?=form_error('password','<small class="text-danger pl-3">','</small>');?>
                    </div>
                    <button type="submit" class="btn btn-primary btn-user btn-block">
                      Login
                    </button>
                  </form>
                  <hr>
                  <div class="text-center">
                    <a class="small" href="<?=base_url('auth/forgotPassword')?>">Lupa Password</a>
                  </div>
                  <div class="text-center">
                    <a class="small" href="<?=base_url('auth/registration');?>">Buat Account!</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

    </div>

  </div>
