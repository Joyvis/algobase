function canConstruct(ransomNote: string, magazine: string): boolean {
    for(const char of magazine) ransomNote = ransomNote.replace(char, "");
    return !ransomNote;
};
