def check_grammar(passage)
    fail "Not a sentence." if passage.empty?
    if passage =~ /^[A-Z].*(\.|\?|\!)$/
        return true
    else 
        return false
    end
end 

