using chitchat

trie = Trie()
add_to_trie(trie, "watch movies", Dict("action" => "BROWSE"))
add_to_trie(trie, "show me movies", Dict("action" => "BROWSE"))
add_to_trie(trie, "watch <genre> movies", Dict("action" => "BROWSE"))
sz_kb = Base.summarysize(trie) / 1024
"$sz_kb KB"
