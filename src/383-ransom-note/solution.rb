# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
  m, n = magazine.chars.tally, ransom_note.chars.tally
  n.all? { |k, v| m[k] && m[k] >= v }
end
