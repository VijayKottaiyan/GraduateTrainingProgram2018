str_s = input("Enter the string: ")
result_str = ''

for i in str_s.split():
    result_str += i.capitalize() + " "

print(result_str)