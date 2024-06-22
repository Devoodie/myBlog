# Welcome To My Blog!
<a href="https://devooty.dev">Home</a>
### Introduction
Hiya! My name is Devante, or Devooty depending on who you are, and I am an aspiring Computer Scientist and Software Engineer. My primary interest is in embedded systems, but I'm currently working as a Systems Administrator.
This is my blog where I will be posting and journaling my Computer Science journey. That being said, please do not take any of what is being posted as fact. 
This is simply my thoughts, emotions, and log of process to becoming a Software Engineer. 
### Content
You may see things like a webserver in a random language im experimenting in *(zig below)*:
```
pub fn main() !void {
    const address = try std.net.Ip4Address.parse("127.0.0.1", 8085);
    var socket = std.net.Address{ .in = address };

    var server = try socket.listen(.{ .reuse_port = true });
    defer server.deinit();

    const connection = try server.accept();
    defer connection.stream.close();

    var buffer: [1024]u8 = undefined;
    var http_server = std.http.Server.init(connection, &buffer);

    var request = try http_server.receiveHead();

    std.debug.print("{s}", .{http_server.read_buffer});

    try request.respond("<body>Hello World!</body>", .{ .status = .ok });
}
```
You may potentially see some of my ideas on the latest and greatest technologies, or maybe even something I learned recently that I want to share or talk about for reinforcements sake. 
### Purpose
That is the overall reason that this blog exists. I have fun keeping up little projects like this, and I have a passsion for what I'm doing. 
I really want to be good at this, and I believe the best way to do that is to put your work and efforts out there.
I feel like it forces you to keep a certain standard for quality beacuse even through the process of writing this, I'm double checking spelling and rereading multiple times.
### Blog Structure
This blog is self-hosted within a <a href="https://hub.docker.com/_/nginx">nginx container</a> within a headless ubuntu server I have in my closet.
For the blog section of the site, I'm using <a href=https://crates.io/crates/mdbook>mdbook</a> for the structure and styling of my blog for convenience sake.
It is perfect for my usecase because I don't want to spend a lot of time on frontend. My homepage is manual css, and it still looks rough and took a lot of my time.
With mdbook, it is Mark Down styled, and this way, I can just focus on blogging. An issue with this that mdbook isn't super customizable with the amount of effort I am willing to put in. 
As a result, the link to my spash page will always be at the top of every blog post as an anchor link with the text of *<a href="https://devooty.dev"> "Home" </a>*.
