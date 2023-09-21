<cfscript>

    // Data Properties
    data = {
        "firstname": "",
        "lastname": "",
        "email": "",
        "password": "",
        "success": false
    };

    // Validations
    constraints = {
        "firstname": { required: true, requiredMessage: "First name is required" },
        "lastname": { required: true, requiredMessage: "Last name is required" },
        "email": { required: true, requiredMessage: "Email is required", type: "email" },
        "password": { required: true, requiredMessage:"Password is required", size: "8..100" },
    };

    function signup(){
        var result = validate(); // ValidateResult object

        if ( !result.hasErrors() ) {
            data.success = true;
            data.firstname = "";
            data.lastname = "";
            data.email = "";
        }
    }
</cfscript>

<cfoutput>
    <div class="row mb-4">
        <div class="col-12 col-md-8 col-lg-5 mx-auto">
            <div class="p-4 shadow-sm rounded bg-white">
                <form wire:submit.prevent="signup">
                    <div class="text-center">
                        <span class="text-muted">Create Account</span>
                        <h2 class="mb-4 fw-light">Join our community</h2>
                    </div>
                    <div class="row">
                        <div class="col-12 col-md-6">
                            <input wire:model.debounce="firstname" class="form-control" type="text" placeholder="First Name">
                            <div class="error">
                                <cfif validation.hasErrors( "firstname" )>
                                    <cfloop array="#validation.getAllErrors( "firstname" )#" index="error">
                                        <div class="error">#error#</div>
                                    </cfloop>
                                </cfif>
                            </div>
                        </div>
                        <div class="col-12 col-md-6">
                            <input wire:model.debounce="lastname" class="form-control" type="text" placeholder="Last Name">
                            <div class="error">
                                <cfif validation.hasErrors( "lastname" )>
                                    <cfloop array="#validation.getAllErrors( "lastname" )#" index="error">
                                        <div class="error">#error#</div>
                                    </cfloop>
                                </cfif>
                            </div>
                        </div>
                    </div>
                    <div class="mt-3 input-group">
                        <input wire:model.debounce="email" class="form-control" type="email" placeholder="name@email.com">
                        <span class="input-group-text">
                            <svg width="20" height="20" fill="none" stroke="currentColor" viewbox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 12a4 4 0 10-8 0 4 4 0 008 0zm0 0v1.5a2.5 2.5 0 005 0V12a9 9 0 10-9 9m4.5-1.206a8.959 8.959 0 01-4.5 1.207"></path>
                            </svg>
                        </span>
                    </div>
                    <div class="error">
                        <cfif validation.hasErrors( "email" )>
                            <cfloop array="#validation.getAllErrors( "email" )#" index="error">
                                <div class="error">#error#</div>
                            </cfloop>
                        </cfif>
                    </div>
                    <div class="mt-3 input-group">
                        <input wire:model.debounce="password" class="form-control" type="password" placeholder="Enter your password">
                        <div class="input-group-text">
                            <svg width="20" height="20" fill="none" stroke="currentColor" viewbox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 15v2m-6 4h12a2 2 0 002-2v-6a2 2 0 00-2-2H6a2 2 0 00-2 2v6a2 2 0 002 2zm10-10V7a4 4 0 00-8 0v4h8z"></path>
                            </svg>
                        </div>
                    </div>
                    <div class="error">
                        <cfif validation.hasErrors( "password" )>
                            <cfloop array="#validation.getAllErrors( "password" )#" index="error">
                                <div class="error">#error#</div>
                            </cfloop>
                        </cfif>
                    </div>
                    <div class="mt-4">
                        <button type="submit" class="btn <cfif validation.hasErrors()>btn-secondary<cfelse>btn-primary</cfif> w-100">Sign up</button>
                    </div>
                    <cfif success>
                        <div class="mt-4">
                            <span class="green">Success</span>
                        </div>
                    </cfif>
                </form>
            </div>
        </div>
    </div>
</cfoutput>