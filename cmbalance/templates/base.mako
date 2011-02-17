<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="stylesheet" type="text/css" href="/static/core.css" />
    </head>
    <body>
        <div id="logo">
            <img src="/static/logo.png" alt="cyanogen(mod) mirror network" />
        </div>
        
        <div id="navigation">
            <ul>
                <li><a href="/">Recent Files</a></li> 
                <li class="break">By Device</li>
                % for device in devices:
                <li class="bullet"><a href="/?device=${device.name}">${device.name}</a></li>
                % endfor
                <li class="break">By Type</li>
                <li class="bullet"><a href="/?type=stable">stable</a></li>
                <li class="bullet"><a href="/?type=RC">release candidate</a></li>
                <li class="bullet"><a href="/?type=nightly">nightly</a></li>
                <li class="break">Mirrors</li>
                <li class="bullet"><a href="/mirrors/list">list</a></li>
                <li class="bullet"><a href="/mirrors/become">become a mirror</a></li>
            </ul>
        </div>
        <div id="container">
            ${next.body()}
        </div>
    </body>
</html>