
if ngx.var['arg_url'] == nil then
    ngx.log(ngx.NOTICE, "[lua] url not exist")
    ngx.exit(ngx.HTTP_NOT_FOUND)
    return
end

local redirecturl = ngx.var['arg_url']

ngx.header["Cache-Control"] = { "private, no-store, no-cache, must-revalidate" }
ngx.header["Pragma"]        = { "no-cache" }
ngx.header["Expires"]       = { "0" }

return ngx.redirect(redirecturl, 302)

