import os


# def create_folder():
#     os.mkdir("D:\\CreateFolderTesting")
#
# def create_sub_folder():
#     os.mkdir("D:\\CreateFolderTesting\Automation")

def create_folder(foldername):
    os.mkdir("D:\\" + foldername)


def create_sub_folder(subfoldername):
    os.mkdir("D:\\CreateFolderTesting\\" + subfoldername)


def concatenate_two_values(val1, val2):
    val3 = val1 + " " + val2
    return val3