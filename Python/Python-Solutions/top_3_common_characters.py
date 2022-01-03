str_s = input("Enter the String: ").lower()
dict_common_words = {}
sorted_dict = {}

for i in str_s:
    dict_common_words[i] = str_s.count(i)

sorted_key = sorted(dict_common_words, key=dict_common_words.get, reverse=True)

for key in sorted_key:
    sorted_dict[key] = dict_common_words[key]

flag = 0
for i in sorted_dict.keys():
    print(i, "-", sorted_dict[i])
    if flag == 2:
        break

    flag += 1
