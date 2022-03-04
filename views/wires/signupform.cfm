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
                                <cfif args.validation.hasErrors( "firstname" )>
                                    <cfloop array="#args.validation.getAllErrors( "firstname" )#" index="error">
                                        <div class="error">#error#</div>
                                    </cfloop>
                                </cfif>
                            </div>
                        </div>
                        <div class="col-12 col-md-6">
                            <input wire:model.debounce="lastname" class="form-control" type="text" placeholder="Last Name">
                            <div class="error">
                                <cfif args.validation.hasErrors( "lastname" )>
                                    <cfloop array="#args.validation.getAllErrors( "lastname" )#" index="error">
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
                        <cfif args.validation.hasErrors( "email" )>
                            <cfloop array="#args.validation.getAllErrors( "email" )#" index="error">
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
                        <cfif args.validation.hasErrors( "password" )>
                            <cfloop array="#args.validation.getAllErrors( "password" )#" index="error">
                                <div class="error">#error#</div>
                            </cfloop>
                        </cfif>
                    </div>
                    <div class="mt-4">
                        <button type="submit" class="btn <cfif args.validation.hasErrors()>btn-secondary<cfelse>btn-primary</cfif> w-100">Sign up</button>
                    </div>
                    <cfif args.success>
                        <div class="mt-4">
                            <span class="green">Success</span>
                        </div>
                    </cfif>
                </form>
            </div>
        </div>
    </div>
</cfoutput>