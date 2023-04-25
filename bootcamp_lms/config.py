import yaml


bootcamp_email = input("Please type your email and press Enter: ")

with open("config.yml", "r") as file:
    data = yaml.load(file, Loader=yaml.FullLoader)
    data["username"] = bootcamp_email
    with open("config.yml", "w") as file:
        yaml.dump(data, file)
