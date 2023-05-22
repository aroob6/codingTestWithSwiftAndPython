def solution(word1, word2):
    word1_dic = dict()
    word2_dic = dict()
    res = ""

    for i in word1:
        word1_dic[i] = 0
        word2_dic[i] = 0

    for i in word1:
        word1_dic[i] += 1
    for i in word2:
        word2_dic[i] += 1

    if word1_dic == word2_dic:
        res = "YES"
    else:
        res = "NO"

    return res

print(solution("AbaAeCe","baeeACA"))
print(solution("ABCDqtqtqEFqGHIJKLMNOPQRSTUVWetagdgXYabcdefghijklmnopqrstuwxyz","aBcdewrqwtqFghIJklMnOpqrsTuegagaeVxyYAbCDEfGHijKLmNoPQRStUwWXz"))
print(solution("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnoqrtuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnoqrtuvwxyz","ZBCcdFfgIJKLMNOPQRSTvVxyYAabDEeGHhijklmnoqrtuUwWXzZBCcdFfgIJKLMNOPQRSTvVxyYAabDEeGHhijklmnoqrtuUwWXz"))

# 강의답안 1
def solution1(word1, word2):
    word1_dic = dict()
    word2_dic = dict()
    res = ""

    for i in word1:
        word1_dic[i] = word1_dic.get(i,0) + 1
    
    for i in word2:
        word2_dic[i] = word2_dic.get(i,0) + 1

    for i in word1_dic.keys():
        if i in word2_dic.keys():
            if word1_dic[i] != word2_dic[i]:
                res = "NO"
                break
        else:
            res = "NO"
            break     
    else:
        res = "YES"

    return res

# 강의답안 2
def solution2(word1, word2):
    dic = dict()
    res = ""

    for i in word1:
        dic[i] = dic.get(i,0) + 1
    
    for i in word2:
        dic[i] = dic.get(i,0) - 1
    
    for x in word1:
        if dic.get(x) > 0:
            res = "NO"
            break
    else:
        res = "YES"

    return res
print(solution2("AbaAeCe","baeeACA"))
print(solution2("ABCDqtqtqEFqGHIJKLMNOPQRSTUVWetagdgXYabcdefghijklmnopqrstuwxyz","aBcdewrqwtqFghIJklMnOpqrsTuegagaeVxyYAbCDEfGHijKLmNoPQRStUwWXz"))

# 강의답안3 리스트로 풀기
def solution3(word1, word2):
    str1 = [0] * 52 #대문자 0~25 소문자 26~51
    str2 = [0] * 52
    res = ""

    for x in word1:
        if x.isupper():
            str1[ord(x)-65] += 1 # A 65 ~ Z 90 0번 인덱스에 넣으려면 -65
        else:
            str1[ord(x)-71] += 1 # a 97 ~ z 122 26번 인덱스에 넣으려면 -71
    
    for x in word2:
        if x.isupper():
            str2[ord(x)-65] += 1
        else:
            str2[ord(x)-71] += 1

    for i in range(52):
        if str1[i] != str2[i]:
            res = "NO"
            break
    else:
        res = "YES"
    return res
print(solution3("AbaAeCe","baeeACA"))