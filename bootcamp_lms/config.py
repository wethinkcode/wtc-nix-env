import yaml


def set_state(bootcamp_email):
    with open("config.yml") as f:
        doc = yaml.load(f)

    doc["username"] = bootcamp_email

    with open("file_to_edit.yaml", "w") as f:
        yaml.dump(doc, f)


bootcamp_email = input("Please type your email and press Enter: ")

set_state(bootcamp_email)
