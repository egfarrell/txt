

### flashed messages with DISMISS button
            ```
            {% with messages = get_flashed_messages() %}
                {% if messages %}
                    {% for message in messages %}
                        <div class="alert alert-warning" role="alert">
                        <span type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></span>

                        <!-- "|safe" needed to render html code like "<br/>" -->
                        {{ message|safe }}
                        </div>
                    {% endfor %}
                {% endif %}
            {% endwith %}
            ```



### gotcha
    - ctrl+c: Flask server doesnt stop: 
        - use Task manager to kill server 

    - print() doesn't display in console
        - add `sys.stdout.flush()`

### ports
    - serving on any port under 1024 needs root
    - for Azure at work: serve on port 8080 !!!

### use .flaskenv file
    pip install python-dotenv

### jinja tip
    - everything between `{%` and `%}` is similar to python code
      (but not 100%)

### jinja "with"
    - NOTE: jinja "with" not the same as python "with" context manager
    - `{% with %}` statement in Jinja lets you define variable,
      but limits the scope of a variable with the `{% endwith %}`

### external access via VM
    - Your program is listening on 127.0.0.1, the loopback
      interface, which means its only accessible from the Droplet
      itself.
    - To access it externally, you need to bind to 0.0.0.0
      instead.

    ```
    export FLASK_APP=flaskr
    export FLASK_ENV=development
    flask run --host=0.0.0.0
    ```

### Use production quality server ("Waitress")
    - sudo ufw allow 8080
    - waitress-serve --call 'flaskr:create_app'

### ports
    - Applications deployed on production web servers typically
      listen on port 443, or sometimes 80 if they do not
      implement encryption, but access to these ports require
      administration rights. Since this application is running in
      a development environment, Flask uses the freely available
      port 5000. 

### MVC pattern
    - Flask applications dont fit the MVC pattern that well. The
      model layer will be introduced when database concepts are
      introduced. Views and controllers arent well defined. 
    - You could say that your view functions (routes.py) are the
      controllers, and your templates (app/templates) are your
      views, but I don't think the distinction is that clear.

### flask extensions
    - Flask extensions are regular pYTHON PACKAGES installed with pip.
