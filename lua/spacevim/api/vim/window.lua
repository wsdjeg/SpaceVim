local window = {}

function window.get_cursor(window_id)
    local winindex = vim.eval("win_id2win(" .. window_id .. ")")
    local w = vim.window(winindex)
    if w == nil then
        vim.command("return [" .. table.concat({0, 0}, ", ") .. "]")
    else
        vim.command("return [" .. table.concat({w.line, w.col}, ", ") .. "]")
    end
end

function window.set_cursor(window_id, pos)
    local winindex = vim.eval("win_id2win(" .. window_id .. ")")
    local w = vim.window(winindex)
end

function window.close(window_id)
    
end


return window


