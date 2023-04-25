import yaml, os


def prepend_line(file_name, line):
    """Insert given string as a new line at the beginning of a file"""
    # define name of temporary dummy file
    dummy_file = file_name + ".bak"
    # open original file in read mode and dummy file in write mode
    with open(file_name, "r") as read_obj, open(dummy_file, "w") as write_obj:
        # Write given line to the dummy file
        write_obj.write(line + "\n")
        # Read lines from original file one by one and append them to the dummy file
        for line in read_obj:
            write_obj.write(line)
    # remove original file
    os.remove(file_name)
    # Rename dummy file as the original file
    os.rename(dummy_file, file_name)


bootcamp_email = input("Please type your email and press Enter: ")

# with open('config.yml', 'r') as file:
#    data = yaml.load(file, Loader=yaml.FullLoader)
#    data['username'] = bootcamp_email
#    with open('config.yml', 'w') as file:
#        yaml.dump(data, file)

with open("config.yml", "r") as first_file:
    data = yaml.safe_load(first_file)
    print(type(data))

    # Accessing our <class dict> and modifying value data using a key
    data["username"] = bootcamp_email

# Writing a new yaml file with the modifications
with open("temp.yml", "w") as new_file:
    yaml.dump(data, new_file, sort_keys=False)

prepend_line("temp.yml", "---")
