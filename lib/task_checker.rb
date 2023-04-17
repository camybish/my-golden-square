def task_checker(text)
    fail "No text to check." if text.empty?
    if text =~ /\#\bTODO\b/
        return true
    else
        return false
    end
end