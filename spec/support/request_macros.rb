# This support package contains modules for authenticaiting
# devise users for request specs.

# This module authenticates users for request specs.#
module RequestMacros
    # Define a method which signs in as a valid user.
    def login_admin_request
        # ASk factory girl to generate a valid user for us.
        @admin

        # We action the login request using the parameters before we begin.
        # The login requests will match these to the user we just created in the factory, and authenticate us.
        post_via_redirect admin_session_path, 'admin[email]' => @admin.email, 'admin[password]' => @admin.password
    end
end
