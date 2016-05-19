def hello(environ, start_response):
    
    variables = environ['QUERY_STRING']
    variables = variables.split('&')
    variables = '\n'.join(variables)

    start_response("200 OK", [
        ("Content-Type", "text/plain"),
        ("Content-Length", str(len(variables)))
    ])
    return iter([variables.encode('utf-8')])