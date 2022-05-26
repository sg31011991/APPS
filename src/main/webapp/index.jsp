<html>
<head>
    <title>Boxfuse Sample App: success!</title>
</head>
<body style="text-align: center">
<h1>Congratulations Mindtree!</h1>
<img src="boxfuse.png">

<h2>You have successfully launched your APP!</h2>

<p>This Instance is running on <strong><%= System.getenv("BOXFUSE_PLATFORM_NAME") %>
</strong> and has the id <strong><%= System.getenv("BOXFUSE_INSTANCE_ID") %>
</strong>.</p>

<p>It is based on the Image <strong><%= System.getenv("BOXFUSE_IMAGE_COORDINATES")%>
</strong> generated from <strong><%= System.getenv("BOXFUSE_PAYLOAD_NAME")%>
</strong></p>

<% if("virtualbox".equals(System.getenv("BOXFUSE_PLATFORM_ID"))) { %>
<h2 style="margin-top: 80px">Next steps</h2>

<p style="margin-bottom: 20px;">
    Display the Instance console:<br/>
    <strong>boxfuse logs <%= System.getenv("BOXFUSE_INSTANCE_ID") %>
    </strong>
</p>

<p style="margin-bottom: 20px;">
    List all running Instances:<br/>
    <strong>boxfuse ps</strong>
</p>

<P style="margin-bottom: 20px;">
    List all Bootable Apps:<br/>
    <strong>boxfuse ls</strong>
</p>

<p>
    Gracefully kill the Instance:<br/>
    <strong>boxfuse kill <%= System.getenv("BOXFUSE_INSTANCE_ID") %>
    </strong>
</p>

<p>
    Deploy this Image unchanged on AWS:<br/>
    <strong>boxfuse run -env=prod <%= System.getenv("BOXFUSE_APP")%>:<%= System.getenv("BOXFUSE_IMAGE_VERSION")%>
    </strong>
</p>
<% } else { %>
<h2 style="margin-top: 80px">Now it's your turn!</h2>

<p>Check out <strong><a href="https://github.com/sg31011991/boxfuse-sample-java-war-hello/blob/master/src/main/webapp/index.jsp">this app</a></strong> from GitHub, modify it, and give it version 2.<br/>You are now ready to fuse and <strong>deploy it with zero downtime</strong> using the commands you already know.</p>



<p>Say goodbye .</p>
<p><strong>Enjoy this APP!</strong></p>
<% } %>
</body>
</html>
