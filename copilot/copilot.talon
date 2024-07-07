app: vscode
not tag: user.codeium
-
captain jest: user.vscode("editor.action.inlineSuggest.trigger")
captain next: user.vscode("editor.action.inlineSuggest.showNext")
captain (previous | last): user.vscode("editor.action.inlineSuggest.showPrevious")
captain yes: user.vscode("editor.action.inlineSuggest.commit")
captain yes word: user.vscode("editor.action.inlineSuggest.acceptNextWord")
captain nope: user.vscode("editor.action.inlineSuggest.undo")
captain cancel: user.vscode("editor.action.inlineSuggest.hide")
captain block last: user.vscode("workbench.action.chat.previousCodeBlock")
captain block next: user.vscode("workbench.action.chat.nextCodeBlock")
captain new file <user.ordinal_or_last>:
    user.copilot_focus_code_block(ordinal_or_last)
    user.vscode("workbench.action.chat.insertIntoNewFile")
captain copy <user.ordinal_or_last>:
    user.copilot_focus_code_block(ordinal_or_last)
    edit.copy()
captain bring <user.ordinal_or_last>: user.copilot_bring_code_block(ordinal_or_last)
captain bring <user.ordinal_or_last> {user.makeshift_destination} <user.cursorless_target>:
    user.cursorless_command(makeshift_destination, cursorless_target)
    user.copilot_bring_code_block(ordinal_or_last)
captain chat [<user.prose>]$: user.copilot_chat(prose or "")
captain {user.copilot_slash_command} <user.cursorless_target> [to <user.prose>]$:
    user.cursorless_command("setSelection", cursorless_target)
    user.copilot_inline_chat(copilot_slash_command or "", prose or "")
captain make [<user.prose>]: user.copilot_inline_chat("", prose or "")
