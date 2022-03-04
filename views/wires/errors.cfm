<cfoutput>
    <cfif args.validation.hasErrors( "firstname" )>
        <cfloop array="#args.validation.getAllErrors( "firstname" )#" index="error">
            <cfif isObject( error )>
                <div>#error.getMessage()#</div>
            <cfelse>
                <div>#error#</div>
            </cfif>
        </cfloop>
    </cfif>
</cfoutput>