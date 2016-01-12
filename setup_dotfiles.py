#!/usr/bin/python

from __future__ import print_function
import os
import subprocess
from functools import partial

filenames = [".tmux.conf", ".vimrc", ".gitconfig"]
vundle_git_repo = "https://github.com/VundleVim/Vundle.vim.git"
vundle_subdirectory = ".vim/bundle/Vundle.vim"


source_folder = os.path.dirname(os.path.realpath(__file__))
destination_folder = os.path.expanduser("~")


def symlink_all(filenames=filenames):
    get_source = partial(os.path.join, source_folder)
    get_destination = partial(os.path.join, destination_folder)

    source_paths = map(get_source, filenames)
    destination_paths = map(get_destination, filenames)

    print("Symlinking from {} to {}".format(source_folder, destination_folder))
    for filename, src, dst in zip(filenames, source_paths, destination_paths):
        try:
            os.symlink(src, dst)
        except OSError as e:
            result = str(e)
        else:
            result = "success"
        print("{}: {}".format(filename, result))


def setup_vundle():
    vundle_folder = os.path.join(destination_folder, vundle_subdirectory)
    subprocess.call(["git", "clone", vundle_git_repo, vundle_folder])


if __name__ == "__main__":
    symlink_all()
    setup_vundle()
