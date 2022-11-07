local status, comment = pcall(require, "Comment")
if not status then
  return
end

comment.setup({
  -- hook = function()
  --   require("ts_context_commentstring.internal").update_commentstring({
  --     key = "__multiline",
  --   })
  -- end,
  pre_hook = function(ctx)
    local U = require("Comment.utils")

    local location = nil
    if ctx.ctype == U.ctype.block then
      location = require("ts_context_commentstring.utils").get_cursor_location()
    elseif ctx.cmotion == U.cmotion.v or ctx.cmotion == U.cmotion.V then
    elseif ctx.cmotion == U.cmotion.v or ctx.cmotion == U.cmotion.V then
      location = require("ts_context_commentstring.utils").get_visual_start_location()
    end
    --[[]]
    return require("ts_context_commentstring.internal").calculate_commentstring({
      key = ctx.ctype == U.ctype.line and "_-default" or "__multiline",
      location = location,
    })
  end,
})