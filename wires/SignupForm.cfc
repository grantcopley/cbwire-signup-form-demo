component extends="cbwire.models.Component"{

    // Data Properties
    data = {
        "firstname": "",
        "lastname": "",
        "email": "",
        "password": "",
        "success": false
    };

    // Validations
    this.constraints = {
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

}