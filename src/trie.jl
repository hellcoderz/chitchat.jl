mutable struct Trie
    children::Dict{String, Trie}
    terminal::Bool
    metadata::Dict{String, String}

    function Trie()
        self = new()
        self.children = Dict{String, Trie}()
        self.terminal = false
        self
    end
end

function add_to_trie(trie::Trie, words::Array{SubString{String},1}, metadata::Dict{String, String})
    if length(words) > 0
        word = words[1]
        if haskey(trie.children, word)
            add_to_trie(trie.children[word], words[2:end], metadata)
        else
            trie.children[word] = Trie()
            add_to_trie(trie.children[word], words[2:end], metadata)
        end
    else
        trie.terminal = true
        trie.metadata = metadata
    end
    return trie
end

function add_to_trie(trie::Trie, phrase::String, metadata::Dict{String, String})
    return add_to_trie(trie, split(phrase, " "), metadata)
end
