# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
    #return -1 if needle not in haystack
    #return index of needle present in haystack
    return -1 if !haystack.include?(needle)
    return haystack.index(needle)
    
end